# giffy plugin

[![CI Status](http://img.shields.io/travis/SiarheiFedartsou/fastlane-plugin-giffy.svg?style=flat)](https://travis-ci.org/SiarheiFedartsou/fastlane-plugin-giffy)
[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-giffy)

## Getting Started

This project is a [fastlane](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-giffy`, add it to your project by running:

```bash
fastlane add_plugin giffy
```

## About giffy

Allows to add some more fun to your development process. Currently provides 2 actions:

### giffy_random_gif_url

```ruby
giffy_random_gif_url(
  api_key: 'YOUR_GIFFY_API_KEY',
  tag: 'cats',
  original_gif: false # optional, default value is false
)
```
### giffy_random_sticker_url

```ruby
giffy_random_sticker_url(
  api_key: 'YOUR_GIFFY_API_KEY',
  tag: 'cats',
  original_gif: false # optional, default value is false
)
```

Go to [Giffy API docs](https://github.com/Giphy/GiphyAPI) for more information about obtaining API key.

## Example

Like the simplest example, you can add random fun GIF to your Slack notification:

```ruby
slack(message: "Application is successfully released to the App Store.",
      channel: "#releases",
      success: true,
      attachment_properties: {
        image_url: giffy_random_gif_url(tag: 'release', api_key: 'dc6zaTOxFJmzC')
      })
```
<img src="./screenshots/success.png" width="440">
<img src="./screenshots/failure.png" width="440">

## Run tests for this plugin

To run both the tests, and code style validation, run

```
rake
```

To automatically fix many of the styling issues, use
```
rubocop -a
```

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://github.com/fastlane/fastlane/blob/master/fastlane/docs/PluginsTroubleshooting.md) doc in the main `fastlane` repo.

## Using `fastlane` Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Plugins.md).

## About `fastlane`

`fastlane` is the easiest way to automate building and releasing your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
