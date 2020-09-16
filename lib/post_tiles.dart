import 'package:flutter/material.dart';

class PostTiles extends StatelessWidget {

  final String content;
  final String title;
  final String author;

  const PostTiles({ this.content, this.title, this.author}) ;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(content),
      leading: Text(title),
      subtitle: Text(author),
    );
  }
}