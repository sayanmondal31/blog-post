import 'package:blog_app/model/post.dart';
import 'package:blog_app/post_tiles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BlogPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Post>(
      builder: (context, postContent, child) {
        return ListView.builder(
          itemCount: postContent.postCount,
          itemBuilder: (BuildContext context, int index) {
            final postDetal = postContent.post[index];
            return PostTiles(
              author: postDetal.author,
              content: postDetal.content,
              title: postDetal.title,
            );
          },
        );
      },
    );
  }
}
