
import 'flutter_artisan_command_platform_interface.dart';

class FlutterArtisanCommand {
  Future<String?> getPlatformVersion() {
    return FlutterArtisanCommandPlatform.instance.getPlatformVersion();
  }
}
