library;

import 'package:flutter/material.dart';

/// A custom button widget that wraps Flutter's TextButton with predefined styling.
/// This widget provides a consistent button appearance across the application
/// while allowing for customization through style parameter.
class CustomButton extends StatelessWidget {
  /// Callback function that triggers when the button is pressed
  final VoidCallback? onPressed;

  /// Widget to be displayed inside the button (typically a Text widget)
  final Widget child;

  /// Optional custom style to override default button styling
  final ButtonStyle? style;

  /// Creates a CustomButton with required onPressed callback and child widget.
  ///
  /// Parameters:
  /// - [onPressed]: Function to execute when button is pressed
  /// - [child]: Widget to display inside the button
  /// - [style]: Optional ButtonStyle for custom appearance
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      // Default styling for the button if no custom style is provided
      style: style ?? TextButton.styleFrom(
        // Adds 16 pixels of padding on all sides
        padding: const EdgeInsets.all(16.0),
        // Sets the text color to white
        foregroundColor: Colors.white,
        // Sets the button's background color to blue
        backgroundColor: Colors.blue,
        // Adds a shadow effect with 9.0 units of elevation
        elevation: 9.0,
        // Sets the text size to 20 for better visibility
        textStyle: const TextStyle(fontSize: 20),
      ),
      child: child,
    );
  }
}
