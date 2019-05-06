import 'package:flutter/material.dart';

import './memories.dart';
import './memories_control.dart';

class MemoriesManager extends StatefulWidget {
  final Map<String, String> baseMemory;

  MemoriesManager({this.baseMemory}) {
    print('[MemoManager Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    return _MemoriesManagerState();
  }
}

class _MemoriesManagerState extends State<MemoriesManager> {
  final List<Map<String, String>> _memories = [];

  @override
  void initState() {
    print('[MemoManager Widget] InitState');
    if (widget.baseMemory != null) {
      _memories.add(widget.baseMemory);
    }
    super.initState();
  }

  void _addMemory(Map<String, String> memory) {
    setState(() {
      _memories.add(memory);
    });
  }

  void _deleteMemory(int index) {
    setState(() {
      _memories.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[MemoManager Widget] Build');
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: MemoriesControl(_addMemory),
        ),
        Expanded(
          child: Memories(_memories, deleteMemory: _deleteMemory),
        )
      ],
    );
  }
}
