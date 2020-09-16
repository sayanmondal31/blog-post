import 'package:blog_app/model/post.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class CreateBlogPage extends StatelessWidget {
  String authorName;
  String blogtitle;
  String blogcontent;
  bool _editBold = false;

  TextEditingController _textEditingControlleID = TextEditingController();
  TextEditingController _textEditingControllerTitle = TextEditingController();
  TextEditingController _textEditingControllerMassege = TextEditingController();

  Widget editButton({Icon icon, Function onpressed}) {
    return Expanded(
      child: IconButton(icon: icon, onPressed: onpressed),
    );
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Material(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Container(
                    child: TextField(
                      onChanged: (name) {
                        authorName = name;
                      },
                      controller: _textEditingControlleID,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'Author Name',
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  onChanged: (title) {
                    blogtitle = title;
                  },
                  controller: _textEditingControllerTitle,
                  maxLines: 1,
                  maxLength: 50,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: 'Title',
                    alignLabelWithHint: true,
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    onChanged: (content) {
                      blogcontent = content;
                    },
                    style: TextStyle(
                        fontWeight: _editBold ? FontWeight.bold : null),
                    controller: _textEditingControllerMassege,
                    keyboardType: TextInputType.multiline,
                    autocorrect: true,
                    maxLines: 15,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: 'Massege Box',
                      alignLabelWithHint: true,
                      hintText: 'Enter your massege...',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5, bottom: 5),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                        icon: Icon(FontAwesomeIcons.paperPlane),
                        onPressed: () {
                          Navigator.pop(context);

                          Provider.of<Post>(context, listen: false)
                              .addPost(authorName, blogtitle, blogcontent);
                        })),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 5, left: 5, right: 5),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    editButton(
                        icon: Icon(Icons.format_bold_rounded),
                        onpressed: () {
                          _editBold = !_editBold;
                        }),
                    editButton(
                        icon: Icon(Icons.format_italic_rounded),
                        onpressed: () {}),
                    editButton(
                        icon: Icon(Icons.format_underline_rounded),
                        onpressed: () {}),
                    editButton(
                        icon: Icon(Icons.attachment_rounded), onpressed: () {}),
                    editButton(
                        icon: Icon(Icons.emoji_emotions_outlined),
                        onpressed: () {}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
