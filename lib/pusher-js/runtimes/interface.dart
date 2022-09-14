// ignore_for_file: non_constant_identifier_names

@JS()
library interface;

import 'dart:html';

import 'package:flutter_pusher_compatible_client/pusher-js/runtimes/web/dom/script_receiver_factory.dart';
import "package:js/js.dart";

import "../core/auth/auth_transports.dart" show AuthTransport;
import "../core/config.dart" show Config;
import "../core/http/ajax.dart" show Ajax;
import "../core/http/http_factory.dart" show HTTPFactory;
import "../core/http/http_request.dart" show HTTPRequest;
import "../core/reachability.dart" show Reachability;
import "../core/socket.dart" show Socket;
import "../core/strategies/strategy.dart" show Strategy;
import "../core/strategies/strategy_options.dart" show StrategyOptions;
import "../core/timeline/timeline_transport.dart" show TimelineTransport;
import "../core/transports/transports_table.dart" show TransportsTableTPRequest;
import "web/dom/jsonp_request.dart" show JSONPRequest;

/// This interface is implemented in web/runtime, node/runtime, react-native/runtime
/// and worker/runtime. Its job is to be the only point of contact to platform-specific
/// code for the core library. When the core library imports "runtime", Webpack will
/// look for src/runtimes/<platform>/runtime.ts. This is how PusherJS keeps
/// core and platform-specific code separate.
@anonymous
@JS()
abstract class Runtime {
  external void setup(
      dynamic
          /*{
    new (key: string, options: any): Pusher;
    ready(): void;
  }*/
          PusherClass);
  external String getProtocol();
  external Map<String, AuthTransport> getAuthorizers();
  external dynamic getLocalStorage();
  external TimelineTransport timelineTransport;
  //external set TimelineTransport(TimelineTransport v);
  external Ajax createXHR();
  external Socket createWebSocket(String url);
  external Reachability getNetwork();
  external Strategy getDefaultStrategy(
      Config config, StrategyOptions options, Function defineTransport);
  external TransportsTable get Transports;
  external set Transports(TransportsTable v);
  external Socket getWebSocketAPI();
  external Ajax getXHRAPI();
  external void addUnloadListener(Function listener);
  external void removeUnloadListener(Function listener);
  external Function get transportConnectionInitializer;
  external set transportConnectionInitializer(Function v);
  external HTTPFactory httpFactory;
  external bool isXHRSupported();
  external HTTPRequest createSocketRequest(String method, String url);

  /// these methods/types are only implemented in the web Runtime, so they're
  /// optional but must be included in the interface
  external Document getDocument();
  external dynamic createScriptRequest(String url);
  external JSONPRequest createJSONPRequest(String url, dynamic data);
  external ScriptReceiverFactory get ScriptReceivers;
  external set ScriptReceivers(ScriptReceiverFactory v);
  external bool isXDRSupported([bool useTLS]);
}

/* WARNING: export assignment not yet supported. */
