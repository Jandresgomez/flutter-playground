import 'package:flutter/material.dart';

import './memory_admin.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Memories List"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => MemoryAdminPage(),
                ),
              ),
          child: Text('LOGIN'),
        ),
      ),
    );
  }
}
