import 'package:flutter/material.dart';

import './memories.dart';
import './memories_control.dart';

class MemoriesManager extends StatefulWidget {
  final List<String> startingMemories;

  MemoriesManager(this.startingMemories) {
    print('[MemoManager Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    return _MemoriesManagerState();
  }
}

class _MemoriesManagerState extends State<MemoriesManager> {
  final List<String> _memories = [];

  @override
  void initState() {
    print('[MemoManager Widget] InitState');
    _memories.addAll(widget.startingMemories);
    super.initState();
  }

  void _addMemory(String memory) {
    setState(() {
      _memories.add(memory);
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
        Memories(_memories)
      ],
    );
  }
}
