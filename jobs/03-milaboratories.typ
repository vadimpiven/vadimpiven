#import "style.typ": job

#let entry(u) = job(
  role: "Rust / Node.js Software Developer",
  company: "MiLaboratories",
  url: "https://milaboratories.com/",
  description: [
    a biotech startup producing software for immune
    repertoire profiling with 8 out of 10 Big Pharma
    companies among its clients
  ],
  dates: "April 2024 - Present",
  achievements: (
    [
      Developed a data lake for biological data, a
      domain-specific query engine, and a query
      language providing efficient access to the data
      in a manner tailored for bioinformaticians.
      These technologies provide the foundation for
      the Table and Chart components of the
      #link(u.platforma)[Platforma.bio] Electron app.
      The library was initially developed as a
      WASM-module (using Emscripten), then
      rewritten into a Node.js Native Addon for
      better performance, and finally ported to Rust
      (using #link(u.neon)[neon-bindings]) to
      utilize #link(u.datafusion)[Apache DataFusion]
      query engine as an execution backend.
    ],
    [
      Led a six-month migration of the entire
      data-processing stack from a legacy binary
      format to #link(u.parquet)[Apache Parquet]. This
      enabled to implement integration with
      #link(u.polars)[Polars] (Python) for backend
      batch data processing and unify the API for
      data processing across backend and desktop
      contexts. These changes tripled data processing
      speed and significantly improved the developer
      experience for SDK users.
    ],
  ),
  technologies: [
    Rust, C++, Node.js (Node-API), WebAssembly, 
    TypeScript, Vite, Electron, Python.
  ],
)

#entry((
  platforma: "https://platforma.bio/",
  neon: "https://github.com/neon-bindings/neon",
  datafusion: "https://datafusion.apache.org/",
  parquet: "https://parquet.apache.org/",
  polars: "https://pola.rs/",
))
