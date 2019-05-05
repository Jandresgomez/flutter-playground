import 'package:flutter/material.dart';

class MemoriesControl extends StatelessWidget {
  final Function addMemory;
  
  MemoriesControl(this.addMemory);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              addMemory('Sing');
            },
            child: Text("Add moment"),
          );
  }
}