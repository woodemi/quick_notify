import 'package:flutter/material.dart';

import 'package:quick_notify/quick_notify.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            ElevatedButton(
              child: Text('notify'),
              onPressed: () {
                QuickNotify.notify(content: 'My content');
              },
            ),
          ],
        ),
      ),
    );
  }
}
