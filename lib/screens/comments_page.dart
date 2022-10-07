import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram_flutter/widgets/post_comment.dart';
import 'package:instagram_flutter/widgets/post_title_widget.dart';

import '../models/post_model.dart';

class CommentsPage extends StatefulWidget {
  PostModel post;

  CommentsPage({Key? key, required this.post}) : super(key: key);

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Comments",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share_outlined),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 12),
            PostTitle(post: widget.post, moreTap: () {}),
            SizedBox(height: 12),
            Divider(thickness: 0.6, color: Colors.grey),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: ListView.builder(
                primary: true,
                shrinkWrap: true,
                itemCount: widget.post.comments.length,
                itemBuilder: (BuildContext context, int index) {
                  return PostCommentWidget(
                      comment: widget.post.comments[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
