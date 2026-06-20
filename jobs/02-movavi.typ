#import "style.typ": job

#job(
  role: "C++ / Qt Software Developer",
  company: "Movavi",
  url: "https://www.movavi.com/",
  description: [
    a company focused on products for multi-platform
    video editing with 3M users in 200+ countries
  ],
  dates: "November 2022 - March 2024",
  achievements: (
    [
      Created lightweight web-installer with native
      UI and a curl-based HTTP downloader for both
      Windows and macOS, which increased successful
      installation rate by 10% (currently used for
      distributing all of company products).
    ],
    [
      Designed and developed a solution for the
      marketing team to display advertising banners
      in products, intended to increase trial-to-paid
      user conversion rate and estimated to bring
      additional \$6 million revenue a year: product
      statistics tracker to detect usage patterns, a
      UI kit for assembling Qt QML banners from
      pre-designed blocks, utility for screenshotting
      the banners (distributed in a Docker
      container), and an agent (to be bundled
      with all Windows and macOS products) that
      displays the appropriate banners based on the
      usage patterns detected.
    ],
  ),
  technologies: [
    C++, Qt/QML, Objective-C, Cocoa, Direct2D, Docker,
    Jenkins, Conan, CMake, Sentry.
  ],
)
