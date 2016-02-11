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

## Contact

- [github.com/dkhamsing](https://github.com/dkhamsing)
- [twitter.com/dkhamsing](https://twitter.com/dkhamsing)

## License

This project is available under the MIT license. See the [LICENSE](LICENSE) file for more info.
