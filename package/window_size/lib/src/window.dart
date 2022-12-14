import 'dart:ui';

/// Represents a window, containing information about its size, position, and
/// properties.
class PlatformWindow {
  /// Create a new window.
  PlatformWindow(this.frame, this.scaleFactor, this.screen);

  /// The frame of the screen, in screen coordinates.
  final Rect frame;

  /// The number of pixels per screen coordinate for this screen.
  final double scaleFactor;

  /// The (or a) screen containing this window, if any.
  final Screen? screen;
}

/// Represents a screen, containing information about its size, position, and
/// properties.
class Screen {
  /// Create a new screen.
  Screen(this.frame, this.visibleFrame, this.scaleFactor);

  /// The frame of the screen, in screen coordinates.
  final Rect frame;

  /// The portion of the screen's frame that is available for use by application
  /// windows. E.g., on macOS, this excludes the menu bar.
  final Rect visibleFrame;

  /// The number of pixels per screen coordinate for this screen.
  final double scaleFactor;
}
