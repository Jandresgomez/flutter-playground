import 'package:flutter/material.dart';

class MemoriesControl extends StatelessWidget {
  final Function addMemory;

  MemoriesControl(this.addMemory);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        addMemory(
            {'title': 'First Steps', 'imageUrl': 'images/FirstSteps.JPG'});
      },
      child: Text("Add moment"),
    );
  }
}
