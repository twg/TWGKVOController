# TWGKVOController

Helper class to wrap KVO notifications.

## Usage

Create an instance of a KVO controller and observes a single object's keypaths

```
self.kvoController = [[TWGKVOController alloc] init];

  __weak typeof(self) weakSelf;
  [self.kvoController observe:object
                     keyPaths:@[ @"title" ]
                        block:^(id object, NSDictionary *change) {
                          [weakSelf handleChange: change];
                        }];

  object.title = @"new title";

```

## Benefits
* Abstracts away redundant KVO boilerplate
* Automatically unsubscribes from notifications when deallocated

## Limitations
* Currently, a controller can only observe a single object at time. Any additional calls to `observe:keyPaths:block:` will be silently ignored.
* The controller captures the block, so any reference to `self` inside the block will result in a retain cycle. You must remember to use `weakSelf`.

## Contributing

To run the example project, clone the repo, and run `pod install` from the Example directory first.

Submit updates through a pull request

## Installation

TWGKVOController is available through [CocoaPods](http://cocoapods.org). To install
it, ensure your Podfile sources the TWG specs repo:

```ruby
source "https://github.com/twg/cocoapod-specs.git"
```

Then, simply add the following line to your Podfile:

```ruby
pod "TWGKVOController"
```

## Author

The Working Group, mobile@twg.ca

## License

TWGKVOController is available under the MIT license. See the LICENSE file for more info.
