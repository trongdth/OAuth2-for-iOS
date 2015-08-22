# OAuth2-for-iOS

It's a library on iOS which is suitable for OAuth2. It supports authorization all websites which are using OAuth2 such as: smarthings, uber, fitbit, delivery, etc...

[![CI Status](http://img.shields.io/travis/Trong Dinh/OAuth2.svg?style=flat)](https://travis-ci.org/Trong Dinh/OAuth2)
[![Version](https://img.shields.io/cocoapods/v/OAuth2.svg?style=flat)](http://cocoapods.org/pods/OAuth2)
[![License](https://img.shields.io/cocoapods/l/OAuth2.svg?style=flat)](http://cocoapods.org/pods/OAuth2)
[![Platform](https://img.shields.io/cocoapods/p/OAuth2.svg?style=flat)](http://cocoapods.org/pods/OAuth2)

## OVERVIEW

1. https://github.com/lukeredpath/LROAuth2Client: I was developing based on this library. Basically, it covers > 80% the works. Please share and thanks him about this.
 
2. https://github.com/nicklockwood/Base64: it's base64 library I'm using for this library.

## IMPROVEMENTS

 1. UI:
   + Use autolayout.
   + Use ARC.
   + Make UX better.

 2. Authorization:
   + Add initWithDict function for OAuthRequestController 
   + Add Authorization key in order to avoid some website requires it.

 3. More things:
   + Fix warning and some small issues for LROAuth2Client
   + Upgrade lib to pod project for easy use.

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.


## Installation

OAuth2 is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "OAuth2"
```

## Author

Trong Dinh, trongdth@gmail.com

## License

OAuth2 is available under the MIT license. See the LICENSE file for more info.
