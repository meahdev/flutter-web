#ifndef PLUGINS_WINDOW_SIZE_LINUX_WINDOW_SIZE_PLUGIN_H_
#define PLUGINS_WINDOW_SIZE_LINUX_WINDOW_SIZE_PLUGIN_H_

// A plugin to allow resizing the window.

#include <flutter_linux/flutter_linux.h>

G_BEGIN_DECLS

#ifdef FLUTTER_PLUGIN_IMPL
#define FLUTTER_PLUGIN_EXPORT __attribute__((visibility("default")))
#else
#define FLUTTER_PLUGIN_EXPORT
#endif

G_DECLARE_FINAL_TYPE(FlWindowSizePlugin, fl_window_size_plugin, FL,
                     WINDOW_SIZE_PLUGIN, GObject)

FLUTTER_PLUGIN_EXPORT FlWindowSizePlugin* fl_window_size_plugin_new(
    FlPluginRegistrar* registrar);

FLUTTER_PLUGIN_EXPORT void window_size_plugin_register_with_registrar(
    FlPluginRegistrar* registrar);

G_END_DECLS

#endif  // PLUGINS_WINDOW_SIZE_LINUX_WINDOW_SIZE_PLUGIN_H_
