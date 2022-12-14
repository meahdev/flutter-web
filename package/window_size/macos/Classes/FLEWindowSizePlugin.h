#import <Foundation/Foundation.h>

#import <FlutterMacOS/FlutterMacOS.h>

/**
 * A FlutterPlugin to manage macOS's shared NSColorPanel singleton.
 * Responsible for managing the panel's display state and sending selected color data to Flutter.
 */
@interface FLEWindowSizePlugin : NSObject <FlutterPlugin, NSWindowDelegate>

@end
