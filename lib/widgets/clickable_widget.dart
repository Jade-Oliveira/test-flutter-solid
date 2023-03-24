import 'package:flutter/material.dart';

/// A clickable widget to implements in HomeScreen
class ClickableWidget extends StatelessWidget {
  /// Constructor of MyHomeScreen
  const ClickableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print("clicou"),

      /// In this case we can use .opaque or . translucent
      behavior: HitTestBehavior.opaque,
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
    );
  }
}
