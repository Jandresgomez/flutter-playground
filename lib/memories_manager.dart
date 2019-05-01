import 'package:flutter/material.dart';

import './memories.dart';

class MemoriesManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MemoriesManagerState();
  }
}

class _MemoriesManagerState extends State<MemoriesManager> {
  List<String> _memories = ["First Steps"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _memories.add("Birthday");
              });
            },
            child: Text("Add moment"),
          ),
        ),
        Memories(_memories)
      ],
    );
  }
}
