-   [Contact](#)

# Launching Your Escape Pod, Step 1: Assemble Your Pi Kit

[](javascript:window.print() "Print this article")

## Assemble Your Pi Kit

Welcome! In this four-step article series, we will set up a small PC known as a Raspberry Pi as an Escape Pod. we will put files on the Escape Pod, configure it, and allow our robots to join the Pod. Step 1 covers the assembly of your Pi kit and collection of necessary materials.

***Note**: The Pi you use for Escape Pod is designed to run "headless"; that is, with no monitor, keyboard, mouse, or other accessories attached- you can simply connect the Pi to your router via Wi-Fi or Ethernet cable and access it from any other computer on the same network by opening an internet browser and navigating to *[*http://escapepod.local*](http://escapepod.local/)

*Before deploying your Escape Pod, please be familiar with the current Known Issues and Limitations. See* [*Known Issues and Limitations*](//support.digitaldreamlabs.com/article/351-known-issues)

Basic Requirements:

-   [](https://assets.digitaldreamlabs.com/PEavApG5dgnZA5ei/ep-beta-0.4.6/escape-pod-beta-046.img.xz)Pi 4 (strongly recommended for performance reasons)
    -   Pi 3B / 3B+ can be used as a minimum.
-   Case compatible with Raspberry Pi (*Usually included with a Pi kit)*
-   Approved Pi power source (5V/2.5A for Pi 3B / 5V/3A for Pi 4)
-   Ethernet Cable and 1 free LAN port on router (Recommended for best performance)
    -   Cable: CAT5 (minimum) / CAT5e / CAT6 / CAT7
    -   (If Ethernet cable not available): Wi-Fi network, 2.4GHz (Pi 3B / Pi 4) or 5GHz (Pi 4 only)
-   MicroSD Card, 8GB or larger
-   MicroSD Card Reader / SD Card Adapter & Reader
-   1 Vector Robot

------------------------------------------------------------------------

### Section 1: Unbox and Assemble Your Raspberry Pi Kit

[](#Section1)

Your new Raspberry Pi is here and you're ready to go! Carefully open your kit and lay out your components on a clean surface. For the best experience, make sure you have all of the following to continue:

[TABLE]

Instructions for case assembly should be included with your kit or with any Pi case that you order. Assemble the Pi in its case according to the instructions. Once you've verified you have everything listed above, move to [Section 2: Flash Your SD card](//support.digitaldreamlabs.com/article/358-launching-your-escape-pod-2).

Did this answer your question? ![](data:image/svg+xml;base64,PHN2ZyBoZWlnaHQ9IjIwIiB2aWV3Ym94PSIwIDAgMjAgMjAiIHdpZHRoPSIyMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgICAgICAgICAgICAgICAgICAgICAgPHBhdGggZD0ibTggMTRhLjk5Ny45OTcgMCAwIDEgLS43MDctLjI5M2wtMi0yYS45OTkuOTk5IDAgMSAxIDEuNDE0LTEuNDE0bDEuMjkzIDEuMjkzIDQuMjkzLTQuMjkzYS45OTkuOTk5IDAgMSAxIDEuNDE0IDEuNDE0bC01IDVhLjk5Ny45OTcgMCAwIDEgLS43MDcuMjkzIiBmaWxsPSIjMkNDNjgzIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPjwvcGF0aD4KICAgICAgICAgICAgICAgICAgICA8L3N2Zz4=) Thanks for the feedback There was a problem submitting your feedback. Please try again later.

Yes ![](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik01LjUzOCAxNC4wMjZBMTkuMzkyIDE5LjM5MiAwIDAgMSAxMiAxMi45MjNjMi4yNiAwIDQuNDMyLjM4OCA2LjQ2MiAxLjEwMy0xLjA4NyAyLjYxLTMuNTcxIDQuNDM2LTYuNDYyIDQuNDM2LTIuODkxIDAtNS4zNzUtMS44MjUtNi40NjItNC40MzZ6bTEuODQ3LTMuODcyYTEuODQ2IDEuODQ2IDAgMSAxIDAtMy42OTIgMS44NDYgMS44NDYgMCAwIDEgMCAzLjY5MnptOS4yMyAwYTEuODQ2IDEuODQ2IDAgMSAxIDAtMy42OTIgMS44NDYgMS44NDYgMCAwIDEgMCAzLjY5MnoiPjwvcGF0aD4KICAgICAgICAgICAgICAgICAgICAgICAgPC9zdmc+)

No ![](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik03LjM4NSAxMy44NDZhMS44NDYgMS44NDYgMCAxIDEgMC0zLjY5MiAxLjg0NiAxLjg0NiAwIDAgMSAwIDMuNjkyem05LjIzIDBhMS44NDYgMS44NDYgMCAxIDEgMC0zLjY5MiAxLjg0NiAxLjg0NiAwIDAgMSAwIDMuNjkyem0tLjk2NyA0Ljk1YS45OTIuOTkyIDAgMCAxLS42MTUtLjIxMmMtMS43MDEtMS4zNDktNC4zNjQtMS4zNDktNi4wNjUgMGEuOTk4Ljk5OCAwIDAgMS0xLjM2LS4xMjMuODk1Ljg5NSAwIDAgMSAuMTI3LTEuM0E2Ljg5NyA2Ljg5NyAwIDAgMSAxMiAxNS42OTJjMS41NTUgMCAzLjA2OS41MjEgNC4yNjYgMS40NjcuNDEuMzI2LjQ2Ny45MDkuMTI3IDEuM2EuOTgyLjk4MiAwIDAgMS0uNzQ1LjMzNXoiPjwvcGF0aD4KICAgICAgICAgICAgICAgICAgICAgICAgPC9zdmc+)

Still need help? [Contact Us](#) [Contact Us](#)

Last updated on March 19, 2022

### Related Articles

-   [Launching Your Escape Pod, Step 4: Onboarding Your Vector Robot](/article/360-launching-your-escape-pod-4)
-   [Launching Your Escape Pod, Step 2: Flash The SD Card](/article/358-launching-your-escape-pod-2)
-   [Launching Your Escape Pod, Step 3: Connecting The Escape Pod](/article/359-launching-your-escape-pod-3)

Toggle Search

### Categories

-   [General Information ](/category/369-general-information)
-   [Launching Your Escape Pod ](/category/367-launching-your-escape-pod)
-   [Troubleshooting ](/category/375-troubleshooting)
-   [Advanced Configuration ](/category/368-developer-tools)

No results found

© [Digital Dream Labs](https://support.digitaldreamlabs.com/) 2023. Powered by [Help Scout](https://www.helpscout.com/knowledge-base/?utm_source=docs&utm_medium=footerlink&utm_campaign=Docs+Branding)
