import 'package:flutter/material.dart';

class Memories extends StatelessWidget {
  final List<String> memories;

  Memories(this.memories);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: memories
          .map(
            (el) => Card(
                  child: Column(children: <Widget>[
                    Image.asset('images/FirstSteps.JPG'),
                    Text(el)
                  ]),
                ),
          )
          .toList(),
    );
  }
}
