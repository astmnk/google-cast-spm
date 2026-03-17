# google-cast-spm

Swift Package Manager wrapper for the [Google Cast](https://developers.google.com/cast).

## Usage

Add the package in Xcode via **File → Add Package Dependencies** and enter this repository's URL, or add it to your `Package.swift`:

```swift
.package(url: "https://github.com/astmnk/google-cast-spm", from: "4.8.4")
```

Then add `"GoogleCastDynamic"` (or `"GoogleCastStatic"`) to your target's dependencies.
