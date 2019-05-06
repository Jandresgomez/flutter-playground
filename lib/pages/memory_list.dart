import 'package:flutter/material.dart';

class MemoryListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Memory List'),
      ),
      body: Center(child: Text('Here you can see all your memories!'),),
    );
  }
}
