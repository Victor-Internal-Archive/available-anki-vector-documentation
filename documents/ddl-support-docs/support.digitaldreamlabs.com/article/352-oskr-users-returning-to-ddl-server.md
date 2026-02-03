-   [Contact](#)

# OSKR Users - Returning to DDL Server

[](javascript:window.print() "Print this article")

# Returning to DDL Server (OSKR Users)

These steps will provide you a pathway to return to the standard DDL server and leave the Escape Pod in the event that you need to. These steps are specialized to minimize collateral damage to other development work in your currently loaded firmware; you can [CLICK HERE for steps](https://oskr.ddl.io/oom/doc/unlock_checklist.html#deploy-3-deploying-the-latest-oskr-software-ota-image) on reflashing the firmware to the latest OSKR build if you have not made any changes to your OSKR firmware.  
*Note: You will still need to run a Clear User Data reset on Vector to reconnect to the DDL server.*

Basic Requirements:  
-SSH Access to Vector ( **Note: Vector *****must***** be on OSKR firmware to continue.**)  
-Original server\_config.json file (stored on the Vector robot in the */anki/data/assets/cozmo\_resources/config/ *directory)

1.  SSH into your Vector and mount as read-write:  
    *$ mount -o remount rw /*
2.  Revert server\_config.json to its original endpoints:  
    *$ cd /anki/data/assets/cozmo\_resources/config/  
    $ cp server\_config.json.orig server\_config.json*
3.  Clear User Data:
    1.  Place Vector on his Charger.
    2.  Double tap his Back button.
    3.  Gently lift his arm assembly all the way up, then lower it back down.
    4.  Rotate one of his treads until “Clear User Data” is highlighted.
    5.  Gently lift his arm assembly all the way up, then lower it back down.
    6.  Confirm the wipe by rotating Vector's tread again to select "Confirm".
    7.  Gently lift his arm assembly all the way up, then lower it back down.
4.  Connect to Vector using [Vector-Web-Setup](//support.digitaldreamlabs.com/article/114-video-vector-and-connection-how-to-set-vector-up) (You must use Google Chrome for this.)
    1.  **Note**: A Bluetooth-enabled PC is required for this. If you do not have a Bluetooth-enabled PC, please use the [Vector Robot mobile app](//support.digitaldreamlabs.com/article/114-video-vector-and-connection-how-to-set-vector-up).
    2.  Place Vector on his Charger.
    3.  Double tap his Back button.
    4.  Click "Pair With Vector", then input the 4-digit pairing PIN that appears on Vector's screen into Vector-Web-Setup.
    5.  Finish onboarding by moving through the prompts and selecting your preferences. If you are asked to log in, use the credentials that you use on the Vector Robot mobile app.

Did this answer your question? ![](data:image/svg+xml;base64,PHN2ZyBoZWlnaHQ9IjIwIiB2aWV3Ym94PSIwIDAgMjAgMjAiIHdpZHRoPSIyMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgICAgICAgICAgICAgICAgICAgICAgPHBhdGggZD0ibTggMTRhLjk5Ny45OTcgMCAwIDEgLS43MDctLjI5M2wtMi0yYS45OTkuOTk5IDAgMSAxIDEuNDE0LTEuNDE0bDEuMjkzIDEuMjkzIDQuMjkzLTQuMjkzYS45OTkuOTk5IDAgMSAxIDEuNDE0IDEuNDE0bC01IDVhLjk5Ny45OTcgMCAwIDEgLS43MDcuMjkzIiBmaWxsPSIjMkNDNjgzIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPjwvcGF0aD4KICAgICAgICAgICAgICAgICAgICA8L3N2Zz4=) Thanks for the feedback There was a problem submitting your feedback. Please try again later.

Yes ![](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik01LjUzOCAxNC4wMjZBMTkuMzkyIDE5LjM5MiAwIDAgMSAxMiAxMi45MjNjMi4yNiAwIDQuNDMyLjM4OCA2LjQ2MiAxLjEwMy0xLjA4NyAyLjYxLTMuNTcxIDQuNDM2LTYuNDYyIDQuNDM2LTIuODkxIDAtNS4zNzUtMS44MjUtNi40NjItNC40MzZ6bTEuODQ3LTMuODcyYTEuODQ2IDEuODQ2IDAgMSAxIDAtMy42OTIgMS44NDYgMS44NDYgMCAwIDEgMCAzLjY5MnptOS4yMyAwYTEuODQ2IDEuODQ2IDAgMSAxIDAtMy42OTIgMS44NDYgMS44NDYgMCAwIDEgMCAzLjY5MnoiPjwvcGF0aD4KICAgICAgICAgICAgICAgICAgICAgICAgPC9zdmc+)

No ![](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik03LjM4NSAxMy44NDZhMS44NDYgMS44NDYgMCAxIDEgMC0zLjY5MiAxLjg0NiAxLjg0NiAwIDAgMSAwIDMuNjkyem05LjIzIDBhMS44NDYgMS44NDYgMCAxIDEgMC0zLjY5MiAxLjg0NiAxLjg0NiAwIDAgMSAwIDMuNjkyem0tLjk2NyA0Ljk1YS45OTIuOTkyIDAgMCAxLS42MTUtLjIxMmMtMS43MDEtMS4zNDktNC4zNjQtMS4zNDktNi4wNjUgMGEuOTk4Ljk5OCAwIDAgMS0xLjM2LS4xMjMuODk1Ljg5NSAwIDAgMSAuMTI3LTEuM0E2Ljg5NyA2Ljg5NyAwIDAgMSAxMiAxNS42OTJjMS41NTUgMCAzLjA2OS41MjEgNC4yNjYgMS40NjcuNDEuMzI2LjQ2Ny45MDkuMTI3IDEuM2EuOTgyLjk4MiAwIDAgMS0uNzQ1LjMzNXoiPjwvcGF0aD4KICAgICAgICAgICAgICAgICAgICAgICAgPC9zdmc+)

Still need help? [Contact Us](#) [Contact Us](#)

Last updated on March 3, 2021

Toggle Search

### Categories

-   [Customer Care Information Screen ](/category/524-customer-care-information-screen)
-   [Frequently Asked Questions ](/category/15-frequently-asked-questions)
-   [Vector Membership ](/category/486-vector-membership)
-   [Setting Vector Up ](/category/491-setting-vector-up)
-   [Software Updates ](/category/483-software-updates)
-   [Interacting with Vector ](/category/74-living-with-vector)
-   [Charging & Power ](/category/489-charging-power)
-   [Vector's Cube ](/category/482-vectors-cube)
-   [Documents & Manuals ](/category/484-documents-manuals)
-   [Reset Vector ](/category/487-reset-vector)
-   [Open Source Kit for Robotics ](/category/343-oskr)
-   [Product Information ](/category/67-product-information)
-   [SDK Information ](/category/34-sdk-information)
-   [Connection Troubleshooting ](/category/481-connection-troubleshooting)
-   [Error Troubleshooting ](/category/488-error-troubleshooting)
-   [Speech Recognition Troubleshooting ](/category/490-speech-recognition-troubleshooting)
-   [Sound Troubleshooting ](/category/485-sound-troubleshooting)
-   [Technical Troubleshooting ](/category/16-troubleshooting)

No results found

© [Digital Dream Labs](https://support.digitaldreamlabs.com/) 2023. Powered by [Help Scout](https://www.helpscout.com/knowledge-base/?utm_source=docs&utm_medium=footerlink&utm_campaign=Docs+Branding)
