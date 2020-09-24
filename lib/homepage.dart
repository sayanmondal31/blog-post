import 'package:blog_app/blogpost_page.dart';
import 'package:blog_app/create_blog_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CreateBlogPage()));
          },
          label: Icon(Icons.edit)),
      // add location
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff8cba51),
        child: Container(
          height: 60.0,
        ),
        elevation: 4,
        shape: CircularNotchedRectangle(),
      ),
      appBar: AppBar(
        title: Text(
          "Bloggedd",
          style: TextStyle(
            color: Colors.green[800],
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: BlogPost(),
    );
  }
}
