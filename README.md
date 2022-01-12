[![Build Status](https://api.travis-ci.org/prebid/prebid-mobile-ios.svg?branch=master)](https://travis-ci.org/prebid/prebid-mobile-ios)

# Prebid Mobile iOS SDK

To work with Prebid Mobile, you will need accesss to a Prebid Server. See [this page](http://prebid.org/prebid-mobile/prebid-mobile-pbs.html) for options.

## Use Cocoapods?

Easily include the Prebid Mobile SDK for your primary ad server in your Podfile/

```
platform :ios, '11.0'

target 'MyAmazingApp' do 
    pod 'PrebidMobile'
end
```

## Build framework from source

Build Prebid Mobile from source code. After cloning the repo, from the root directory run

```
./scripts/buildPrebidMobile.sh
```

to output the Prebid Mobile framework.


## Test Prebid Mobile

Run the test script to run unit tests and integration tests.

```
./scripts/testPrebidMobile.sh
```
