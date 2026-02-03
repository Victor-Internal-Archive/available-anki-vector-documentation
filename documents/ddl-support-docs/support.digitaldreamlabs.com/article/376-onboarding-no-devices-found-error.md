-   [Contact](#)

# Onboarding: "No Devices Found" Error

[](javascript:window.print() "Print this article")

![](//d33v4339jhl8k0.cloudfront.net/docs/assets/5e3f0b1e2c7d3a7e9ae777f5/images/606cadc78996210f18bd0918/file-UaovvaMnsO.png)

During the Onboarding process, you may see the above error: "No devices were found. Please follow the steps below and try again." This error is generally caused by one of the following issues:

-   Vector is not powered on or is not fully booted up.
-   Vector is not near enough to the Raspberry Pi (The Escape Pod hardware) to connect via Bluetooth.
-   Vector did not send out a Bluetooth signal while the Pi was scanning via Bluetooth.

#### Solutions:

1.  Make sure Vector is powered on:  
    1.  Check for the green light on his back to indicate that he is powered on. If he is on the charger, you may also see three additional green lights rotating. This is normal.
    2.  If you have recently powered Vector on (within the last minute or so), give Vector about 1 minute to fully boot, then try again.
2.  Move Vector closer to the Escape Pod so that he is within Bluetooth range:  
    1.  Vector should be within about 15-20 feet of (and preferably in the same room as) the Escape Pod.
    2.  You may need to set Vector up on the Escape Pod using a mobile device so that you can be closer to the Escape Pod if your computer is located in another room- or temporarily place Vector on a surface nearer to the Escape Pod for onboarding.
3.  Make sure Vector is in pairing mode:
    1.  Place Vector on his charger.
    2.  Double-tap his back button. He will enter pairing mode and his screen will display a key.
    3.  Wait 5 seconds, then click "Pair With Vector" again.
4.  If all above steps fail, reboot the Raspberry Pi:
    1.  Locate the power cord for the Raspberry Pi.
    2.  Disconnect the power cord from the Raspberry Pi
    3.  Wait for 30 seconds.
    4.  Re-insert the power cord into the Raspberry Pi.
    5.  Wait for 2 minutes for the Pi to finish booting the Escape Pod software.
    6.  Refresh the page, then retry pairing with Vector.

Did this answer your question? ![](data:image/svg+xml;base64,PHN2ZyBoZWlnaHQ9IjIwIiB2aWV3Ym94PSIwIDAgMjAgMjAiIHdpZHRoPSIyMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgICAgICAgICAgICAgICAgICAgICAgPHBhdGggZD0ibTggMTRhLjk5Ny45OTcgMCAwIDEgLS43MDctLjI5M2wtMi0yYS45OTkuOTk5IDAgMSAxIDEuNDE0LTEuNDE0bDEuMjkzIDEuMjkzIDQuMjkzLTQuMjkzYS45OTkuOTk5IDAgMSAxIDEuNDE0IDEuNDE0bC01IDVhLjk5Ny45OTcgMCAwIDEgLS43MDcuMjkzIiBmaWxsPSIjMkNDNjgzIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPjwvcGF0aD4KICAgICAgICAgICAgICAgICAgICA8L3N2Zz4=) Thanks for the feedback There was a problem submitting your feedback. Please try again later.

Yes ![](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik01LjUzOCAxNC4wMjZBMTkuMzkyIDE5LjM5MiAwIDAgMSAxMiAxMi45MjNjMi4yNiAwIDQuNDMyLjM4OCA2LjQ2MiAxLjEwMy0xLjA4NyAyLjYxLTMuNTcxIDQuNDM2LTYuNDYyIDQuNDM2LTIuODkxIDAtNS4zNzUtMS44MjUtNi40NjItNC40MzZ6bTEuODQ3LTMuODcyYTEuODQ2IDEuODQ2IDAgMSAxIDAtMy42OTIgMS44NDYgMS44NDYgMCAwIDEgMCAzLjY5MnptOS4yMyAwYTEuODQ2IDEuODQ2IDAgMSAxIDAtMy42OTIgMS44NDYgMS44NDYgMCAwIDEgMCAzLjY5MnoiPjwvcGF0aD4KICAgICAgICAgICAgICAgICAgICAgICAgPC9zdmc+)

No ![](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik03LjM4NSAxMy44NDZhMS44NDYgMS44NDYgMCAxIDEgMC0zLjY5MiAxLjg0NiAxLjg0NiAwIDAgMSAwIDMuNjkyem05LjIzIDBhMS44NDYgMS44NDYgMCAxIDEgMC0zLjY5MiAxLjg0NiAxLjg0NiAwIDAgMSAwIDMuNjkyem0tLjk2NyA0Ljk1YS45OTIuOTkyIDAgMCAxLS42MTUtLjIxMmMtMS43MDEtMS4zNDktNC4zNjQtMS4zNDktNi4wNjUgMGEuOTk4Ljk5OCAwIDAgMS0xLjM2LS4xMjMuODk1Ljg5NSAwIDAgMSAuMTI3LTEuM0E2Ljg5NyA2Ljg5NyAwIDAgMSAxMiAxNS42OTJjMS41NTUgMCAzLjA2OS41MjEgNC4yNjYgMS40NjcuNDEuMzI2LjQ2Ny45MDkuMTI3IDEuM2EuOTgyLjk4MiAwIDAgMS0uNzQ1LjMzNXoiPjwvcGF0aD4KICAgICAgICAgICAgICAgICAgICAgICAgPC9zdmc+)

Still need help? [Contact Us](#) [Contact Us](#)

Last updated on January 17, 2022

### Related Articles

-   [Launching Your Escape Pod, Step 4: Onboarding Your Vector Robot](/article/360-launching-your-escape-pod-4)

Toggle Search

### Categories

-   [General Information ](/category/369-general-information)
-   [Launching Your Escape Pod ](/category/367-launching-your-escape-pod)
-   [Troubleshooting ](/category/375-troubleshooting)
-   [Advanced Configuration ](/category/368-developer-tools)

No results found

© [Digital Dream Labs](https://support.digitaldreamlabs.com/) 2023. Powered by [Help Scout](https://www.helpscout.com/knowledge-base/?utm_source=docs&utm_medium=footerlink&utm_campaign=Docs+Branding)
