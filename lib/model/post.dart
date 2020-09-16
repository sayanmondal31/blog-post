import 'dart:collection';

import 'package:blog_app/model/blog_structure.dart';
import 'package:flutter/cupertino.dart';

class Post extends ChangeNotifier {
  List<BlogStructure> _post = [];

  UnmodifiableListView<BlogStructure> get post => UnmodifiableListView(_post);

  int get postCount => _post.length;

  void addPost(String author, String title, String content) {
    final rawPostTopic =
        BlogStructure(author: author, title: title, content: content);
    _post.add(rawPostTopic);
    notifyListeners();
  }

  void editBold() {
    TextStyle(fontWeight: FontWeight.bold);
    notifyListeners();
  }

  void editBoldEnable(){

  }
}
