import 'package:flutter/material.dart';
import 'dart:async';

import '../memories_manager.dart';

class MemoryDetailPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  MemoryDetailPage(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imageUrl),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Memory Name: ' + title),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  color: Theme.of(context).primaryColor,
                  child: Text('DELETE'),
                  onPressed: () => Navigator.pop(context, true),
                ),
                RaisedButton(
                  color: Theme.of(context).primaryColor,
                  child: Text("BACK"),
                  onPressed: () => Navigator.pop(context, false),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
