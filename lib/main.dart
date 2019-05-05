import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './memories_manager.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
        accentColor: Colors.deepPurple
        ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Memories List'),
        ),
        body: MemoriesManager(["Walk"]),
      ),
    );
  }
}
