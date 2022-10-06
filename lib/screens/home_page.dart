import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_flutter/screens/story_page.dart';
import 'package:instagram_flutter/utils/colors.dart';
import 'package:instagram_flutter/utils/images.dart';

import '../models/post_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          actions: [
            InkWell(child: SvgPicture.asset(MyImages.icon_add)),
            SizedBox(width: 12),
            InkWell(child: SvgPicture.asset(MyImages.icon_favorite)),
            SizedBox(width: 12),
            InkWell(child: SvgPicture.asset(MyImages.icon_messenger)),
            SizedBox(width: 12)
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Image.asset(
            MyImages.instagram_logo,
            width: 104,
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              historyList(),
              const Divider(thickness: 0.4, color: Colors.grey),
              posts()
            ],
          ),
        ));
  }

  Widget historyList() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => MoreStories()));
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 6),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(PostModel.posts[index].userLogo)),
                      shape: BoxShape.circle,
                      color: Colors.teal,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Expanded(child: Text(PostModel.posts[index].userName))
              ],
            );
          }),
    );
  }

  Widget posts() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          constraints: BoxConstraints(minHeight: 160),
          child: postItem(PostModel.posts[index]),
        );
      },
      itemCount: PostModel.posts.length,
    );
  }

  Widget postItem(PostModel post) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 9),
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(post.userLogo), fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  post.userName,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz_rounded),
            )
          ],
        ),
        ExpandablePageView.builder(
          onPageChanged: (index) {
            setState(() {
              post.imageIndicator = index;
            });
          },
          scrollDirection: Axis.horizontal,
          itemCount: post.images.length,
          itemBuilder: (BuildContext context, int index) {
            return postImage(
              post.images[index],
            );
          },
        ),
        postActions(post)
      ],
    );
  }

  Widget postActions(PostModel post) {
    return Padding(
      padding: EdgeInsets.only(left: 12, top: 9, right: 0, bottom: 9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    post.isLiked = !post.isLiked;
                  });
                },
                child: !post.isLiked
                    ? Icon(Icons.favorite_border_outlined)
                    : Icon(
                        Icons.favorite_outlined,
                        color: Colors.red,
                      ),
              ),
              SizedBox(width: 8),
              SvgPicture.asset(MyImages.icon_comment, width: 24),
              SizedBox(width: 8),
              SvgPicture.asset(
                MyImages.icon_share,
                width: 24,
              ),
            ],
          ),
          postIndicator(post.imageIndicator),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: Icon(Icons.bookmark_outline),
          )
        ],
      ),
    );
  }

  Widget postImage(String imgUrl) {
    return CachedNetworkImage(
      fit: BoxFit.fitWidth,
      imageUrl: imgUrl,
      placeholder: (context, url) => SizedBox(
        width: double.infinity,
        height: 400,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      errorWidget: (context, url, error) => SizedBox(
        width: double.infinity,
        height: 400,
        child: Center(
          child: Icon(
            Icons.error,
            size: 120,
          ),
        ),
      ),
    );
  }

  Widget postIndicator(int currentIndex) {
    return Container(
      margin: EdgeInsets.only(right: 24),
      height: 42,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: currentIndex == index
                  ? MyColors.color_indicator
                  : MyColors.color_indicator_unselected,
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 4);
        },
      ),
    );
  }
}
