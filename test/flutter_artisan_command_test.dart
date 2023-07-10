import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_artisan_command/flutter_artisan_command.dart';
import 'package:flutter_artisan_command/flutter_artisan_command_platform_interface.dart';
import 'package:flutter_artisan_command/flutter_artisan_command_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterArtisanCommandPlatform
    with MockPlatformInterfaceMixin
    implements FlutterArtisanCommandPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterArtisanCommandPlatform initialPlatform = FlutterArtisanCommandPlatform.instance;

  test('$MethodChannelFlutterArtisanCommand is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterArtisanCommand>());
  });

  test('getPlatformVersion', () async {
    FlutterArtisanCommand flutterArtisanCommandPlugin = FlutterArtisanCommand();
    MockFlutterArtisanCommandPlatform fakePlatform = MockFlutterArtisanCommandPlatform();
    FlutterArtisanCommandPlatform.instance = fakePlatform;

    expect(await flutterArtisanCommandPlugin.getPlatformVersion(), '42');
  });
}
