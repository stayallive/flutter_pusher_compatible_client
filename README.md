# Pusher Compatible Flutter Client

_This is a fork of the [pusher_channels_flutter](https://github.com/pusher/pusher-channels-flutter) client._

[![Latest Release](https://img.shields.io/github/v/release/stayallive/flutter_pusher_compatible_client)](https://github.com/stayallive/flutter_pusher_compatible_client/releases)
[![GitHub license](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/stayallive/flutter_pusher_compatible_client/master/LICENSE)
[![likes](https://img.shields.io/pub/likes/flutter_pusher_compatible_client?logo=dart)](https://pub.dev/packages/flutter_pusher_compatible_client/score)
[![popularity](https://img.shields.io/pub/popularity/flutter_pusher_compatible_client?logo=dart)](https://pub.dev/packages/flutter_pusher_compatible_client/score)
[![pub points](https://img.shields.io/pub/points/flutter_pusher_compatible_client?logo=dart)](https://pub.dev/packages/flutter_pusher_compatible_client/score)

This is a [Pusher Channels](https://pusher.com/channels) compatible Flutter client that can be used with any [Pusher protocol](https://pusher.com/docs/channels/library_auth_reference/pusher-websockets-protocol/) compatible server like [Soketi](https://github.com/soketi/soketi) for example.

## Installation

To integrate the plugin in your Flutter app, you need to add the plugin to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_pusher_compatible_client: '^2.0.1'
```

## Usage

For information about how to use this library see the [pusher_channels_flutter docs](https://github.com/pusher/pusher-channels-flutter/tree/v2.0.1).

Currently this package is based on v2.0.1 of the official [pusher_channels_flutter](https://github.com/pusher/pusher-channels-flutter/tree/v2.0.1) package.

## Configuration

Below are the configuration parameters added in this package:

| parameter                | Android | iOS | Web |
| ------------------------ | ------- | --- | --- |
| wsHost                   | ✅      | ✅ | ✅ |
| wsPort                   | ✅      | ✅ | ✅ |
| wssPort                  | ✅      | ✅ | ✅ |

#### `wsHost (String)`

The host to which connections will be made.

#### `wsPort (Integer)`

The port to which unencrypted connections will be made. Automatically set correctly.

#### `wssPort (Integer)`

The port to which encrypted connections will be made. Automatically set correctly.

## Credits

This is a fork of the [pusher_channels_flutter](https://github.com/pusher/pusher-channels-flutter) package maintained by [Pusher](https://pusher.com).

## License

PusherChannelsFlutter is released under the MIT license. See [LICENSE](https://github.com/stayallive/flutter_pusher_compatible_client/blob/master/LICENSE) for details.
