#include "include/flutter_artisan_command/flutter_artisan_command_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_artisan_command_plugin.h"

void FlutterArtisanCommandPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_artisan_command::FlutterArtisanCommandPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
