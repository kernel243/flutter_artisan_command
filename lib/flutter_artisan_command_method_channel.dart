import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_artisan_command_platform_interface.dart';

/// An implementation of [FlutterArtisanCommandPlatform] that uses method channels.
class MethodChannelFlutterArtisanCommand extends FlutterArtisanCommandPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_artisan_command');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
