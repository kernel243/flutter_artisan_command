#ifndef FLUTTER_PLUGIN_FLUTTER_ARTISAN_COMMAND_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_ARTISAN_COMMAND_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_artisan_command {

class FlutterArtisanCommandPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterArtisanCommandPlugin();

  virtual ~FlutterArtisanCommandPlugin();

  // Disallow copy and assign.
  FlutterArtisanCommandPlugin(const FlutterArtisanCommandPlugin&) = delete;
  FlutterArtisanCommandPlugin& operator=(const FlutterArtisanCommandPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_artisan_command

#endif  // FLUTTER_PLUGIN_FLUTTER_ARTISAN_COMMAND_PLUGIN_H_
