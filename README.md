# RaIOSdk

iOS SDK for IoT integration. Binary distribution.

## Requirements

- iOS 15.0+
- Xcode 15.0+
- Swift 5.9+

## Installation

### Swift Package Manager (Native iOS)

In Xcode: File → Add Package Dependencies → paste:
```

https://github.com/docongkien/RaIOSdk

````

Select version (Up to Next Major Version from `0.0.1`).

### CocoaPods (React Native or legacy iOS)

Add to your `Podfile`:
```ruby
pod 'RaIOSdk', :git => 'https://github.com/docongkien/RaIOSdk.git', :tag => '0.0.1'
````

Then:

```bash
pod install
```

## Quick Start

```swift
import RaIOSdk

RaIOCore.shared.config(
    appKey: "YOUR_KEY",
    appSecret: "YOUR_SECRET",
    isProduction: false
) { result in
    switch result {
    case .success:
        print("✅ Configured")
    case .failure(let error):
        print("❌ \(error)")
    }
}
```

## Sample App

```bash
git clone https://github.com/docongkien/RaIOSdk
cd RaIOSdk/SampleApp
open SampleApp.xcodeproj
```

## Documentation

- [Swift Package Manager Guide](docs/integration/swift-package-manager.md)
- [CocoaPods Guide](docs/integration/cocoapods.md)
- [Troubleshooting](docs/integration/troubleshooting.md)

## License

Proprietary - docongkien. All rights reserved.
