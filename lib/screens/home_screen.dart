import 'package:flutter/material.dart';

/// Initial screen
class HomeScreen extends StatelessWidget {
  /// Constructor of initial screen
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter test'),
    );
  }
}

///
class MyHomePage extends StatefulWidget {
  ///
  final String title;

  ///
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Hello there',
            ),
          ],
        ),
      ),
    );
  }
}
