# sdk-accounts-ios-framework
SDK containing common model classes used to show accounts

## Importing
The SDK can be imported via SPM (Swift Package Manager).
- Add the package in the dependencies section of the Swift Manifest file. For example, `.package(url: "https://github.com/mCards/sdk-accounts-ios-framework", from: "1.1.13")`
- In the target dependencies section add: `.product(name: "AccountsSDK", package: "sdk-accounts-ios-framework")`

## 1.1.13

The XCFramework is copied unchanged from the [Wantsa 1.1.13 release](https://github.com/Wantsa/sdk-accounts-ios-framework/tree/1.1.13), published by Bitrise on September 11, 2026.

- Framework commit: `46b40baeb60a63bbe9d0b17a5aa21f8da9b96499`
- Accounts SDK source revision: `2906abd16221e468132b469a13de8b01f2fa0ee6` (also recorded in `.source-revision`)
- Built against CoreSDK 1.4.8; consuming applications must provide CoreSDK.
- Includes iOS arm64 and iOS Simulator arm64/x86_64 slices, with a minimum deployment target of iOS 15.6.
