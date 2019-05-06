import 'package:flutter/material.dart';

class MemoryCreatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Memory'),
      ),
      body: Center(child: Text('Here you can create your own memory!'),),
    );
  }
}
