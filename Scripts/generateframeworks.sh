# Build the framework for simulators running on x86_64 and arm64 CPUs
xcodebuild archive \
-project AccountsSDK.xcodeproj \
-scheme AccountsSDK \
-archivePath GeneratedFrameworks/ios-simulator.xcarchive \
-sdk iphonesimulator \
-arch arm64 -arch x86_64 \
SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

# Build the framework for real devices
xcodebuild archive \
-project AccountsSDK.xcodeproj \
-scheme AccountsSDK \
-archivePath GeneratedFrameworks/ios-device.xcarchive \
-sdk iphoneos \
-arch arm64 \
SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

# Delete the existing XCFramework if there's one. For some reason, it doesn't get overwritten like the others.
rm -rf GeneratedFrameworks/AccountsSDK.xcframework

# Bundle up the individual frameworks into an XCFramework
xcodebuild \
-create-xcframework \
-framework GeneratedFrameworks/ios-device.xcarchive/Products/Library/Frameworks/AccountsSDK.framework \
-framework GeneratedFrameworks/ios-simulator.xcarchive/Products/Library/Frameworks/AccountsSDK.framework \
-output GeneratedFrameworks/AccountsSDK.xcframework

# Sign the XCFramework

# Replace The empty string with the name of a a valid certificate in the keychain keeping the qoutes
# e.g. "Apple Development: John Doe (95XAMG7E555)"
codesign -s "Apple Development: Yaroslav Dukal (82TN233SSH)" GeneratedFrameworks/AccountsSDK.xcframework
