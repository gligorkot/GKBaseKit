# GKBaseKit

Base package adding helpful errors + error adapter, isDebug function and a failure block returning an error response protocol that app errors can conform to.

Supports Swift Package Manager and Cocoapods.

## Installation instructions

### Swift Package Manager

Add one the following to the `dependencies` array in your "Package.swift" file:

- If using http add:

```swift
.package(url: "https://github.com/gligorkot/GKBaseKit.git", from: Version("2.0.0"))
```

- If using ssh add:

```swift
.package(url: "git@github.com:gligorkot/GKBaseKit.git", from: Version("2.0.0"))
```

Or by adding `https://github.com/gligorkot/GKBaseKit.git`, version 2.0.0 or later, to the list of Swift packages for any project in Xcode.

### CocoaPods

Add the following to your "Podfile":

```ruby
pod 'GKBaseKit', '~> 2.x'
```
