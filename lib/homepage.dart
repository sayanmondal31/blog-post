import 'package:blog_app/blogpost_page.dart';
import 'package:blog_app/create_blog_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CreateBlogPage()));
          },
          label: Icon(Icons.edit)),
      appBar: AppBar(
        title: Text("Bloggedd"),
        actions: [
          IconButton(
            icon: Icon(Icons.account_tree_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: BlogPost(),
    );
  }
}
