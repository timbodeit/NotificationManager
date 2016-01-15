# NotificationManager

[![Build Status](https://travis-ci.org/timbodeit/NotificationManager.svg?branch=master)](https://travis-ci.org/timbodeit/NotificationManager)
[![Version](https://img.shields.io/cocoapods/v/NotificationManager.svg?style=flat)](http://cocoapods.org/pods/NotificationManager)
[![License](https://img.shields.io/cocoapods/l/NotificationManager.svg?style=flat)](http://cocoapods.org/pods/NotificationManager)
[![Platform](https://img.shields.io/cocoapods/p/NotificationManager.svg?style=flat)](http://cocoapods.org/pods/NotificationManager)

NotificationManager is a block-based NSNotificationCenter wrapper, that deregisters automatically
on deallocation.

## Usage

Create one NotificationManager instance per object.

```swift
import NotificationManager 

class Foo {
  let notificationManager = NotificationManager()

  init() {
    notificationManager.registerObserver("BarNotification") { [unowned self] notification in
      // TODO: handle notification
    }
  }
}
```

## Installation

NotificationManager is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "NotificationManager"
```

## Author

Pod created by Tim Bodeit, tim@bodeit.com

Most of the credit goes to [More indirection](http://moreindirection.blogspot.de/2014/08/nsnotificationcenter-swift-and-blocks.html?showComment=1418043102722)

## License

NotificationManager is available under the MIT license. See the LICENSE file for more info.
