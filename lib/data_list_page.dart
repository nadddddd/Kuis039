import 'package:flutter/material.dart';
import 'detail_page.dart';
import 'profile_page.dart';

class DataListPage extends StatelessWidget {
  final String username;
  DataListPage({required this.username});

  final List<String> dummyData = ['Post 1', 'Post 2', 'Post 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Data List')),
      body: ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(dummyData[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(title: dummyData[index]),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProfilePage(username: username),
            ),
          );
        },
        child: Icon(Icons.person),
      ),
    );
  }
}
