import 'package:flutter/material.dart';

import './pages/memory_detail.dart';

class Memories extends StatelessWidget {
  final List<Map<String, String>> memories;
  final Function deleteMemory;

  Memories(this.memories, {this.deleteMemory}) {
    print('[Memo Widget] Constructor');
  }

  Widget _buildMemoryCard(context, index) {
    return Card(
      child: Column(children: <Widget>[
        Image.asset(memories[index]['imageUrl']),
        Container(
          padding: EdgeInsets.only(top: 10.0),
          child: Text(memories[index]['title']),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Theme.of(context).primaryColor,
              child: Text('Details'),
              onPressed: () => Navigator.push<bool>(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => MemoryDetailPage(
                        memories[index]['title'],
                        memories[index]['imageUrl'],
                      ),
                ),
              ).then((bool value) {
                if(value) {
                  deleteMemory(index);
                }
              }),
            )
          ],
        )
      ]),
    );
  }

  Widget _buildMemoryList() {
    Widget memoryList = Center(
      child: Text("No memories found in the device"),
    );
    if (memories.length > 0) {
      memoryList = ListView.builder(
        itemBuilder: _buildMemoryCard,
        itemCount: memories.length,
      );
    }
    return memoryList;
  }

  @override
  Widget build(BuildContext context) {
    print('[Memo Widget] Build');
    return _buildMemoryList();
  }
}
