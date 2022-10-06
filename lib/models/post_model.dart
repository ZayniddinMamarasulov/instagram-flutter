import 'dart:math';

import 'package:instagram_flutter/models/post_comment.dart';

class PostModel {
  String userName;
  String userLogo;
  List<String> images = [];
  bool isLiked;
  bool isBookMarked;
  int likeCount = 0;
  List<PostComment> comments = [];
  int imageIndicator = 0;

  PostModel({
    required this.userName,
    required this.userLogo,
    required this.images,
    required this.isLiked,
    required this.isBookMarked,
  });

  static var _random = Random();

  static final posts = [
    PostModel(
      userName: "AkbarAli",
      userLogo:
          "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      images: [
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatarss/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      ],
      isLiked: false,
      isBookMarked: false,
    ),
    PostModel(
      userName: "Abbos",
      userLogo:
          "https://xsgames.co/randomusers/assets/avatars/female/${_random.nextInt(50)}.jpg",
      images: [
        "https://xsgames.co/randomusers/assets/avatars/female/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/female/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatarsd/female/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/female/${_random.nextInt(50)}.jpg",
      ],
      isLiked: false,
      isBookMarked: false,
    ),
    PostModel(
      userName: "Begzod",
      userLogo:
          "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      images: [
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      ],
      isLiked: false,
      isBookMarked: false,
    ),
    PostModel(
      userName: "Botir",
      userLogo:
          "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      images: [
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      ],
      isLiked: false,
      isBookMarked: false,
    ),
    PostModel(
      userName: "Botir",
      userLogo:
          "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      images: [
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      ],
      isLiked: false,
      isBookMarked: false,
    ),
    PostModel(
      userName: "Botir",
      userLogo:
          "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      images: [
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      ],
      isLiked: false,
      isBookMarked: false,
    ),
    PostModel(
      userName: "Botir",
      userLogo:
          "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      images: [
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      ],
      isLiked: false,
      isBookMarked: false,
    ),
    PostModel(
      userName: "Botir",
      userLogo:
          "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      images: [
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      ],
      isLiked: false,
      isBookMarked: false,
    ),
    PostModel(
      userName: "Botir",
      userLogo:
          "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      images: [
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      ],
      isLiked: false,
      isBookMarked: false,
    ),
    PostModel(
      userName: "Botir",
      userLogo:
          "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      images: [
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      ],
      isLiked: false,
      isBookMarked: false,
    ),
    PostModel(
      userName: "Botir",
      userLogo:
          "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      images: [
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      ],
      isLiked: false,
      isBookMarked: false,
    ),
    PostModel(
      userName: "Botir",
      userLogo:
          "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      images: [
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
      ],
      isLiked: false,
      isBookMarked: false,
    ),
  ];
}
