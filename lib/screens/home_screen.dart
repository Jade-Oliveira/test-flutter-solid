import 'package:flutter/material.dart';
import 'package:test_flutter_solid/widgets/clickable_widget.dart';

/// Initial screen
class HomeScreen extends StatelessWidget {
  /// Constructor of initial screen
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomeScreen(),
    );
  }
}

///
class MyHomeScreen extends StatefulWidget {
  /// Constructor of MyHomeScreen
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ClickableWidget(),
    );
  }
}
