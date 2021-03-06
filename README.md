# GitHub Trending RSS

<img alt="logo image" src="./static/img/logo.svg" width="100">

![Fetch and Generate RSS Feeds](https://github.com/mshibanami/GitHubTrendingRSS/workflows/Fetch%20and%20Generate%20RSS%20Feeds/badge.svg?event=schedule)
![Unit Test](https://github.com/mshibanami/GitHubTrendingRSS/workflows/Unit%20Test/badge.svg)

This is a RSS feed generator for [GitHub Trending](https://github.com/trending).

GitHub Actions run this tool everyday and generated feeds are hosted on GitHub Pages. You can check current feeds' status here: [Fetch and Generate RSS Feeds](https://github.com/mshibanami/GitHubTrendingRSS/actions?query=workflow%3A%22Fetch+and+Generate+RSS+Feeds%22).

Feeds of some popular languages (e.g. JavaScript) have more detailed items than others. It's specified [here](https://github.com/mshibanami/GitHubTrendingRSS/blob/ea64981/Sources/GitHubTrendingRSSKit/Const.swift#L31). Please feel free to send a PR that adds another language if your favourite one isn't there, or just fork this repo and create a scheduled job for it on GitHub Actions to host your own feeds.

## Development

Run this if you use Xcode:

```sh
swift package generate-xcodeproj --xcconfig-overrides Settings.xcconfig
```

## Aknowledgements

- [stencilproject / Stencil](https://github.com/stencilproject/Stencil)
- [kylef / PathKit](https://github.com/kylef/PathKit)
- [scinfu / SwiftSoup](https://github.com/scinfu/SwiftSoup)
- [iwasrobbed / Down](https://github.com/iwasrobbed/Down)
- [hartbit / Yaap](https://github.com/hartbit/Yaap)
- [jgthms / bulma](https://github.com/jgthms/bulma)
