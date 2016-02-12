# cocoapods-readme

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">One day I’ll make a bot that looks through the READMEs of all Pods, looks to see if it uses “Cocoapods” and PRs “CocoaPods” :D</p>&mdash; Ørta (@orta) <a href="https://twitter.com/orta/status/697374357975388160">February 10, 2016</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

`cocoapods-readme` is based on [`frankenstein`](https://github.com/dkhamsing/frankenstein).

## Installation

```shell
$ git clone https://github.com/dkhamsing/cocoapods-readme.git
$ cd cocoapods-readme/
$ rake install
```

- This project requires GitHub credentials in [.netrc](https://github.com/octokit/octokit.rb#using-a-netrc-file).
- `cocopoads-readme` is being used by [ReadmeCritic](https://github.com/issues?utf8=✓&q=cocoapods+author%3AReadmeCritic).

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

## Example

Here's the diff for a [pull request](https://github.com/foursquare/FSQCellManifest/pull/2) created with `cocoapods-readme`:

```diff
Setup
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
 
 Example App
 ===========
```

## Contact

- [github.com/dkhamsing](https://github.com/dkhamsing)
- [twitter.com/dkhamsing](https://twitter.com/dkhamsing)

## License

This project is available under the MIT license. See the [LICENSE](LICENSE) file for more info.
