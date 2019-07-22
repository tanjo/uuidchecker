# uuidchecker-ios

CoreFoundation 以外の UUID の動作をチェック

## ASIdentifierManager.shared().advertisingIdentifier.uuidString

- 原則、常に同じIDが発行される
  - [Privacy] -> [Advertising] -> [Limit Ad Tracking] を **On** にされると
    - 実機： 0埋めIDが返される
    - シミュレータ: 通常のIDが返される

## UIDevice.current.identifierForVendor?.uuidString

- iOS7 以降公開していないアプリだと Vendor ID が存在しないため
  - `com.apple.app` と `com.apple.apple.app` は別 Vendor 扱いとなり、異なるIDが発行される
  - `com.apple.app1` と `com.apple.app1` は同じ Vendor 扱いとなり、同じIDが発行される

## ProcessInfo().globallyUniqueString

- 都度変わる

## UUID().uuidString

- 都度変わる
