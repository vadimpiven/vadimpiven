#import "style.typ": job

#let entry(u) = job(
  role: "C++ / Win32 Software Developer",
  company: "Kaspersky",
  url: "https://www.kaspersky.com/",
  description: [
    an industry leader in endpoint protection, 
    recognized by Gartner as a 2021 Customers' Choice
    for Endpoint Protection Platforms, 400M 
    individual users and 240K corporate users in 200+
    countries
  ],
  dates: "February 2020 - October 2022",
  achievements: (
    [
      Worked in a team developing the business-logic
      part of
      #link(u.kes)[Kaspersky Endpoint Security] (KES)
      for Windows (Kaspersky's flagship B2B product
      for Windows endpoint protection) in accordance
      with the Microsoft Security Development
      Lifecycle.
    ],
    [
      Introduced Windows Enterprise Multi-Session
      support by enforcing proper thread
      impersonation, which allowed to use KES in the
      Azure Virtual Desktop environment and target
      new customers.
    ],
    [
      Implemented queueing of protection tasks to 
      prevent high disk and CPU utilization during 
      user activity periods which resolved performance
      problems for customers with the outdated
      hardware.
    ],
    [
      Integrated #link(u.edr)[EDR] component (MSI
      installation option, settings migration,
      upgrade without reboot, local C\#\/WPF UI
      settings page, remote MMC-based administration
      console settings page, security report
      propagation to local SQLite-based storage and
      remote administration console storage,
      network-provided security policy enforcement,
      fully covered with unit-tests, major scenarios
      covered with E2E automated tests) to introduce
      KES to EDR solutions market.
    ],
  ),
  technologies: [
    C++, C\#\/WPF, WiX Toolset, SQLite, WinAPI,
    WinDbg, Windows Performance Analyzer.
  ],
)

#entry((
  kes: "https://www.kaspersky.com/enterprise-security/endpoint",
  edr: "https://www.kaspersky.com/enterprise-security/endpoint-detection-response-edr",
))
