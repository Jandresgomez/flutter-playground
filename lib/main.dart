import 'package:flutter/material.dart';

import './memories_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Easy List'),
        ),
        body: MemoriesManager(),
      ),
    );
  }
}