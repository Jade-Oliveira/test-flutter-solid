import 'dart:math';

import 'package:flutter/material.dart';

/// A clickable widget to implements in HomeScreen
class ClickableWidget extends StatefulWidget {
  /// Constructor of MyHomeScreen
  const ClickableWidget({super.key});

  @override
  State<ClickableWidget> createState() => _ClickableWidgetState();
}

class _ClickableWidgetState extends State<ClickableWidget> {
  @override
  Widget build(BuildContext context) {
    /// here is generated a randomNumber
    final generatedColorNumber = Random().nextInt(Colors.primaries.length);

    /// here is generated a Color according generatedNumber
    final generatedColor = Colors.primaries[generatedColorNumber];

    return GestureDetector(
      onTap: () {
        setState(() => generatedColor);
      },

      /// In this case we can use .opaque or . translucent
      behavior: HitTestBehavior.opaque,
      child: ColoredBox(
        color: generatedColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'Hello there',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
