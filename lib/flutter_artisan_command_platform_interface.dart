import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_artisan_command_method_channel.dart';

abstract class FlutterArtisanCommandPlatform extends PlatformInterface {
  /// Constructs a FlutterArtisanCommandPlatform.
  FlutterArtisanCommandPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterArtisanCommandPlatform _instance = MethodChannelFlutterArtisanCommand();

  /// The default instance of [FlutterArtisanCommandPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterArtisanCommand].
  static FlutterArtisanCommandPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterArtisanCommandPlatform] when
  /// they register themselves.
  static set instance(FlutterArtisanCommandPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
