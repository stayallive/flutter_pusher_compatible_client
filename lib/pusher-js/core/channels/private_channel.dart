@JS()
library core.channels.private_channel;

import 'package:flutter_pusher_compatible_client/pusher-js/core/pusher.dart';
import "package:js/js.dart";

import "../auth/options.dart" show AuthorizerCallback;
import "channel.dart" show Channel;

/// Extends public channels to provide private channel interface.
@JS()
class PrivateChannel extends Channel {
  external factory PrivateChannel(String name, Pusher pusher);

  /// Authorizes the connection to use the channel.
  @override
  external authorize(String socketId, AuthorizerCallback callback);
}
