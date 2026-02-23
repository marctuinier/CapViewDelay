# CapViewDelay

> A simple macOS utility to adjust the screenshot preview delay.

[![Swift](https://img.shields.io/badge/Swift-5-orange.svg)](https://swift.org)
[![Platform](https://img.shields.io/badge/platform-macOS-blue.svg)](https://www.apple.com/macos)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

<img width="616" alt="CapViewDelay Screenshot" src="https://github.com/user-attachments/assets/740bfbcb-6c4b-4398-8d6e-26665d0c6caa" />

## About

By default, when you take a screenshot on macOS, a small preview thumbnail appears in the corner of your screen for about **5 seconds**. CapViewDelay lets you change that duration to any value you prefer — or disable it entirely by setting it to `0`.

## Requirements

- macOS 13.0 (Ventura) or later

## Installation

1. Go to the [**Releases**](https://github.com/marctuinier/CapViewDelay/releases) page.
2. Download the latest `.dmg` file.
3. Open the DMG and drag **CapViewDelay.app** into your **Applications** folder.

> **Note:** Since this app is not from the App Store, you may need to right-click the app and select **Open** on the first launch. If that doesn't work, go to **System Settings > Privacy & Security > Open Anyway**.

## Usage

1. Launch **CapViewDelay**.
2. Enter a duration in seconds (e.g. `10` for 10 seconds, `0` to disable the preview).
3. Click **Set Duration**.
4. The change takes effect immediately. You can close the app.

## Building from Source

1. Clone the repository:
   ```bash
   git clone https://github.com/marctuinier/CapViewDelay.git
   ```
2. Open `CapViewDelay.xcodeproj` in Xcode.
3. Build and run (`Cmd + R`).

## License

This project is licensed under the [MIT License](LICENSE).
