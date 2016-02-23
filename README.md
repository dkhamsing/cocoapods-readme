# cocoapods-readme

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">One day I’ll make a bot that looks through the READMEs of all Pods, looks to see if it uses “Cocoapods” and PRs “CocoaPods” :D</p>&mdash; Ørta (@orta) <a href="https://twitter.com/orta/status/697374357975388160">February 10, 2016</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

Well [Orta](https://github.com/orta), `cocoapods-readme` is here to help :smile:

## Installation

```shell
$ git clone https://github.com/dkhamsing/cocoapods-readme.git
$ cd cocoapods-readme/
$ rake install
```

This project is based on [`frankenstein`](https://github.com/dkhamsing/frankenstein) and requires GitHub credentials in [.netrc](https://github.com/octokit/octokit.rb#using-a-netrc-file).

## Usage

### `cocoapods-readme`

```shell
cocoapods-readme <repo>
```

```
$ cocoapods-readme Rentlio/SwiftRestModel
cocoapods-readme 0.1.0
Checking Rentlio/SwiftRestModel ...
Found misspelling of "CocoaPods" 🔴🤓
1. You can use [Cocoapods](http://cocoapods.org) to install `SwiftRestModel` by adding it to your `Podfile`:
2. You'll need to install [Cocoapods](http://cocoapods.org) first.
Open pull request? (y/n) y
Forking to ReadmeCritic/SwiftRestModel ...
Committing change...
Opening pull request...
Done: https://github.com/Rentlio/SwiftRestModel/pull/6
```

### `batch-correct`

```shell
batch-correct <file>
```

`file` contains a [list of repos](https://github.com/dkhamsing/all_specs_repos), one repo per line.

![](assets/batch-correct-demo.gif)

## Examples

`cocopoads-readme` is being used by [ReadmeCritic](https://github.com/issues?utf8=✓&q=cocoapods+author%3AReadmeCritic), here are some pull request examples:

https://github.com/foursquare/FSQCellManifest/pull/2

```diff
 If your minimum iOS version requirement is 8.0 or greater, Carthage is the recommended way to integrate FSQCellManifest with your app.
 Add `github "foursquare/FSQCellManifest"` to your Cartfile and follow the instructions from [Carthage's README](https://github.com/Carthage/Carthage) for adding Carthage-built frameworks to your project.

-## Cocoapods
+## CocoaPods

-If you use Cocoapods, you can add `pod 'FSQCellManifest', '~> [desired version here]'` to your Podfile. Further instructions on setting up and using Cocoapods can be found on [their website](https://cocoapods.org)
+If you use CocoaPods, you can add `pod 'FSQCellManifest', '~> [desired version here]'` to your Podfile. Further instructions on setting up and using CocoaPods can be found on [their website](https://cocoapods.org)

 ## Manual Installation

You can also simply add the objc files in the `FSQCellManifest` directoryto your

 ## FSQMessageForwarder

-FSQCellManifest also requires [FSQMessageForwarder](https://github.com/foursquare/FSQMessageForwarder) to work. If you are using Carthage or Cocoapods, this should be taken care of for you automatically. Otherwise you will need to manually add that repo to your project as well (e.g. via git submodules or manually copying the files into your repo).
+FSQCellManifest also requires [FSQMessageForwarder](https://github.com/foursquare/FSQMessageForwarder) to work. If you are using Carthage or CocoaPods, this should be taken care of for you automatically. Otherwise you will need to manually add that repo to your project as well (e.g. via git submodules or manually copying the files into your repo).
```

https://github.com/GenerallyHelpfulSoftware/SVGgh/pull/21

```diff

The included library assumes ARC style memory management. It's also been arbitrarily set to support iOS 7 and up. I've moved to using newer code annotations such as *nullable* so it requires a recent version of Xcode to compile. Supports both traditional and module based framework includes.

-Originally, this was distributed as a static library, but that is not a modern way to use it. So the enclosed project will build a framework, and most developers will probably find the use of **Cocoapods** more enjoyable. Requires Cocoapods 0.39 or above.
+Originally, this was distributed as a static library, but that is not a modern way to use it. So the enclosed project will build a framework, and most developers will probably find the use of **CocoaPods** more enjoyable. Requires CocoaPods 0.39 or above.

-I've enabled **IB_DESIGNABLE** for the view classes for environments with a minimum OS version of iOS 8 and above. This will allow artwork and widgets to be visible in Interface Builder. Cocoapods users should put ````use_frameworks!```` in their Podfile.
+I've enabled **IB_DESIGNABLE** for the view classes for environments with a minimum OS version of iOS 8 and above. This will allow artwork and widgets to be visible in Interface Builder. CocoaPods users should put ````use_frameworks!```` in their Podfile.

 The segmented control is not ready for use in tvOS apps.

If you just want to use the code in your app and are uninterested in the underly
 * SVGToPDFConverter.h A class to convert the renderer's contents to a PDF.
 * SVGPrinter.h A class to send a renderer's contents to a printer.

-####If you are familiar with using Cocoapods and using it in your project
+####If you are familiar with using CocoaPods and using it in your project
 * Insert ````pod 'SVGgh'```` into your PodFile
 • If you set your deployment target to iOS 8 or above, you should insert
 ````use_frameworks!```` in your Podfile.

-* Go through the standard procedures for updating your Xcode workspace via Cocoapods. ````pod update````, ````pod install````, etc.
+* Go through the standard procedures for updating your Xcode workspace via CocoaPods. ````pod update````, ````pod install````, etc.

-####If you are not using Cocoapods
+####If you are not using CocoaPods
```

## Contact

- [github.com/dkhamsing](https://github.com/dkhamsing)
- [twitter.com/dkhamsing](https://twitter.com/dkhamsing)

## License

This project is available under the MIT license. See the [LICENSE](LICENSE) file for more info.
