# heatshrink-objc

[![CI Status](http://img.shields.io/travis/nobre84/heatshrink-objc.svg?style=flat)](https://travis-ci.org/nobre84/heatshrink-objc)
[![Version](https://img.shields.io/cocoapods/v/heatshrink-objc.svg?style=flat)](http://cocoapods.org/pods/heatshrink-objc)
[![License](https://img.shields.io/cocoapods/l/heatshrink-objc.svg?style=flat)](http://cocoapods.org/pods/heatshrink-objc)
[![Platform](https://img.shields.io/cocoapods/p/heatshrink-objc.svg?style=flat)](http://cocoapods.org/pods/heatshrink-objc)

## Usage

```objc
RNHeatshrinkEncoder *encoder = [[RNHeatshrinkEncoder alloc] initWithWindowSize:8 andLookaheadSize:4];

NSData *testData = [@"ABCABCABCABCABCABC" dataUsingEncoding:NSUTF8StringEncoding];

NSData *encodedData = [encoder encodeData: testData];

RNHeatshrinkDecoder *decoder = [[RNHeatshrinkDecoder alloc] initWithWindowSize:8 andLookaheadSize:4];
NSData *decodedData = [decoder decodeData:encodedData];

expect(encodedData.length).to.beLessThan(testData.length);
expect(decodedData).to.equal(testData);

```

## Requirements

## Installation

heatshrink-objc is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'heatshrink-objc'
```

## Author

nobre84, nobre84@gmail.com

## License

heatshrink-objc is available under the MIT license. See the LICENSE file for more info.
