-- Normalise pandoc's HTML->Markdown output so the whole page is clean GFM:
--   * strip presentational attrs from links/images (else they stay raw HTML)
--   * unwrap layout <div>/<span> wrappers
--   * strip table attrs/captions, and flatten <ul> cells to inline content so
--     tables with list cells render as GFM tables instead of raw HTML.

function Link(el) el.attr = pandoc.Attr(); return el end
function Image(el) el.attr = pandoc.Attr(); return el end
function Div(el) return el.content end
function Span(el) return el.content end

-- Collapse a cell's blocks into one inline run; list items are joined with
-- hard line breaks (rendered as <br> inside the GFM cell).
local function flatten(blocks)
  local out = {}
  for _, blk in ipairs(blocks) do
    if blk.t == "BulletList" or blk.t == "OrderedList" then
      for i, item in ipairs(blk.content) do
        -- inline separator, not a LineBreak: GFM pipe-table cells forbid line
        -- breaks, which would force the whole table back to raw HTML.
        if i > 1 then table.insert(out, pandoc.Str(" • ")) end
        for _, sub in ipairs(flatten(item)) do table.insert(out, sub) end
      end
    elseif blk.content then
      for _, inl in ipairs(blk.content) do table.insert(out, inl) end
    end
  end
  return out
end

local function fix_rows(rows)
  for _, row in ipairs(rows) do
    for _, cell in ipairs(row.cells) do
      cell.contents = { pandoc.Plain(flatten(cell.contents)) }
    end
  end
end

function Table(tbl)
  tbl.attr = pandoc.Attr()
  tbl.caption = pandoc.Caption({})
  fix_rows(tbl.head.rows)
  for _, b in ipairs(tbl.bodies) do
    fix_rows(b.head)
    fix_rows(b.body)
  end
  fix_rows(tbl.foot.rows)
  return tbl
end
