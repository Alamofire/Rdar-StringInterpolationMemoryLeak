# String Interpolation Memory Leak

This is a sample project put together to submit a Rdar for a string interpolation memory leak we've identified in the Alamofire 3.4.0 release.

## Reproduction Details

Run the sample app with the Leaks instrument to produce the memory leak. Here are the following details:

* iOS 9.3.1
* Xcode 7.3.1 (7D1014)
* Alamofire 3.4.0

![Screenshot](https://raw.githubusercontent.com/Alamofire/Rdar-StringInterpolationMemoryLeak/master/Screenshots/String%20Interpolation%20Leak.png?token=AAKUlha0ayPGIUWnQ5vSe4tsHdx4blL2ks5XZxDgwA%3D%3D)

## Root Cause

The issue is caused by using string interpolation in the Timeline implementation of `CustomStringConvertible` and `CustomDebugStringConvertible` in Alamofire. Temporarily, we've moved over to string concatenation as a workaround to stop the leak in [PR #1262](https://github.com/Alamofire/Alamofire/pull/1262).

> Once the leak is fixed in Swift, we can move back to using string interpolation as that is certainly preferred.

## Rdar

This issue has been filed as `rdar://26761490` on 2016/06/12 and can be found on Open Radar [here](https://openradar.appspot.com/radar?id=5010235949318144).
