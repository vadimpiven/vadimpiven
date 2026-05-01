# Vadim Piven, Senior Software Engineer, Based in Bilbao, Spain

[vadim@piven.tech][email] · [+34-607-537-336][phone] · [LinkedIn][linkedin] · [Portfolio][portfolio] · [PDF version][pdf]

[email]: mailto:vadim@piven.tech
[phone]: https://wa.me/34607537336
[linkedin]: https://www.linkedin.com/in/vadimpiven/
[portfolio]: https://piven.tech
[pdf]: ./Vadim_Piven_CV.pdf

> [!IMPORTANT]
> Software Engineer with **6+ years** of experience **building cross-platform desktop products**
> with **Rust**, **C++ 20** (STL, Boost), **Objective-C**, and **Qt/QML**. Led product development
> from conception to completion, focusing on security, observability, performance and seamless
> user experience.

---

## Professional Experience

### Rust / Node.js Software Developer · [MiLaboratories][milaboratories] · April 2024 – Present

> A biotech startup producing software for immune repertoire profiling with 8 out of 10 Big Pharma
> companies among its clients.

[milaboratories]: https://milaboratories.com/

- Developed a data lake for biological data, a domain-specific query engine, and a query language
  providing efficient access to the data in a manner tailored for bioinformaticians. These
  technologies provide the foundation for the Table and Chart components of the
  [Platforma.bio][platforma] Electron app. The library was initially developed as a WASM-module
  (using Emscripten), then rewritten into a Node.js Native Addon for better performance, and
  finally ported to Rust (using [neon-bindings][neon]) to utilize [Apache DataFusion][datafusion]
  query engine as an execution backend.
- Led a six-month migration of the entire data-processing stack from a legacy binary format to
  [Apache Parquet][parquet]. This enabled to implement integration with [Polars][polars] (Python)
  for backend batch data processing and unify the API for data processing across backend and
  desktop contexts. These changes tripled data processing speed and significantly improved the
  developer experience for SDK users.

[platforma]: https://platforma.bio/
[neon]: https://neon-bindings.com/
[datafusion]: https://datafusion.apache.org/
[parquet]: https://parquet.apache.org/
[polars]: https://pola.rs/

**Key technologies:** Rust · C++ · Node.js (Node-API) · WebAssembly · TypeScript · Vite · Electron
· Python

---

### C++ / Qt Software Developer · [Movavi][movavi] · November 2022 – March 2024

> A company focused on products for multi-platform video editing with 3M users in 200+ countries.

[movavi]: https://www.movavi.com/

- Created lightweight web-installer with native UI and a curl-based HTTP downloader for both
  Windows and macOS, which increased successful installation rate by 10% (currently used for
  distributing all of company products).
- Designed and developed a solution for the marketing team to display advertising banners in
  products, intended to increase trial-to-paid user conversion rate and estimated to bring
  additional $6 million revenue a year: product statistics tracker to detect usage patterns, a UI
  kit for assembling Qt/QML banners from pre-designed blocks, utility for screenshotting the
  banners (distributed in a Docker container), and an agent (to be bundled with all Windows and
  macOS products) that displays the appropriate banners based on the usage patterns detected.

**Key technologies:** C++ · Qt/QML · Objective-C · Cocoa · Direct2D · Docker · Jenkins · Conan ·
CMake · Sentry

---

### C++ / Win32 Software Developer · [Kaspersky][kaspersky] · February 2020 – October 2022

> An industry leader in endpoint protection, recognized by Gartner as a 2021 Customers' Choice for
> Endpoint Protection Platforms, 400M individual users and 240K corporate users in 200+ countries.

[kaspersky]: https://www.kaspersky.com/

- Worked in a team developing the business-logic part of [Kaspersky Endpoint Security][kes] (KES)
  for Windows (Kaspersky's flagship B2B product for Windows endpoint protection) in accordance
  with the Microsoft Security Development Lifecycle.
- Introduced Windows Enterprise Multi-Session support by enforcing proper thread impersonation,
  which allowed to use KES in the Azure Virtual Desktop environment and target new customers.
- Implemented queueing of protection tasks to prevent high disk and CPU utilization during user
  activity periods which resolved performance problems for customers with the outdated hardware.
- Integrated [EDR][edr] component (MSI installation option, settings migration, upgrade without
  reboot, local C#/WPF UI settings page, remote MMC-based administration console settings page,
  security report propagation to local SQLite-based storage and remote administration console
  storage, network-provided security policy enforcement, fully covered with unit-tests, major
  scenarios covered with E2E automated tests) to introduce KES to EDR solutions market.

[kes]: https://www.kaspersky.com/small-to-medium-business-security/endpoint-windows
[edr]: https://www.kaspersky.com/enterprise-security/endpoint-detection-response-edr

**Key technologies:** C++ · C#/WPF · WiX Toolset · SQLite · WinAPI · WinDbg · Windows Performance
Analyzer

---

## Education

### M.S. in System and Software Engineering · [HSE University][hse] · September 2020 – July 2022

> GPA: **7.25 out of 10**
>
> Consistently ranked as one of Russia's top universities, ranked 151-200 by QS: World University
> Ranking in Computer Science & Information Systems category.

### B.S. in Applied Mathematics and Informatics · [MIREA][mirea] · September 2016 – July 2020

> GPA: **4.93 out of 5**
>
> MIREA – Russian Technological University, one of the leading Russian universities in
> information and computer technologies, ranked 26 by Best Global Universities in Russia.

[hse]: https://www.hse.ru/en/
[mirea]: https://www.mirea.ru/en/
