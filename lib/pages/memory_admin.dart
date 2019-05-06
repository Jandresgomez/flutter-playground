import 'package:flutter/material.dart';

import './memory_create.dart';
import './memory_list.dart';

class MemoryAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Choose'),
              ),
              ListTile(
                title: Text('Manage Memories'),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Memories List'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.unarchive),
                text: 'Create Memory',
              ),
              Tab(
                icon: Icon(Icons.format_list_bulleted),
                text: 'My Memories',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            MemoryCreatePage(),
            MemoryListPage(),
          ],
        ),
      ),
    );
  }
}
