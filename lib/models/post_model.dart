import 'dart:math';

import 'package:instagram_flutter/models/post_comment.dart';

class PostModel {
  String userName;
  String title;
  String userLogo;
  List<String> images = [];
  bool isLiked;
  bool isBookMarked;
  int likeCount = 0;
  List<PostComment> comments = [];
  int imageIndicator = 0;
  bool isTitleExpanded = false;

  PostModel({
    required this.userName,
    required this.title,
    required this.userLogo,
    required this.images,
    required this.isLiked,
    required this.isBookMarked,
    required this.comments,
    this.likeCount = 0,
  });

  static var random = Random();

  static String baseUrl = "https://xsgames.co/randomusers/assets/avatars/male/";

  static final posts = [
    PostModel(
        userName: "AkbarAli",
        title:
            "O‘zbekistonda kuz-qish mavsumi oldidan suv tarmoqlarini sozlash ishlari qanday ketayotgani aytildi suv tarmoqlarini sozlash ishlari qanday ketayotgani aytildi suv tarmoqlarini sozlash ishlari qanday ketayotgani aytildi",
        userLogo:
            "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        images: [
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
          "https://xsgames.co/randomusers/assets/avatarss/male/${random.nextInt(50)}.jpg",
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        ],
        isLiked: false,
        isBookMarked: false,
        likeCount: 101,
        comments: []),
    PostModel(
        userName: "Abbos",
        title:
            "O‘zbekistonda kuz-qish mavsumi oldidan suv tarmoqlarini sozlash ishlari qanday ketayotgani aytildi",
        userLogo:
            "https://xsgames.co/randomusers/assets/avatars/female/${random.nextInt(50)}.jpg",
        images: [
          "https://xsgames.co/randomusers/assets/avatars/female/${random.nextInt(50)}.jpg",
          "https://xsgames.co/randomusers/assets/avatars/female/${random.nextInt(50)}.jpg",
          "https://xsgames.co/randomusers/assets/avatarsd/female/${random.nextInt(50)}.jpg",
          "https://xsgames.co/randomusers/assets/avatars/female/${random.nextInt(50)}.jpg",
        ],
        isLiked: false,
        isBookMarked: false,
        comments: [
          PostComment(
            "Mansur",
            "${baseUrl}${random.nextInt(50)}.jpg",
            "Gap yo'q juda zo'r",
          ),
          PostComment(
            "Mansur",
            "${baseUrl}${random.nextInt(50)}.jpg",
            "Men birinchi",
          ),
        ]),
    PostModel(
      userName: "Begzod",
      title:
          "O‘zbekistonda kuz-qish mavsumi oldidan suv tarmoqlarini sozlash ishlari qanday ketayotgani aytildi",
      userLogo:
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
      images: [
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
      ],
      isLiked: false,
      isBookMarked: false,
      comments: [],
    ),
    PostModel(
      userName: "Botir",
      title:
          "O‘zbekistonda kuz-qish mavsumi oldidan suv tarmoqlarini sozlash ishlari qanday ketayotgani aytildi",
      userLogo:
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
      images: [
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
      ],
      isLiked: false,
      isBookMarked: false,
      comments: [],
    ),
    PostModel(
      userName: "Botir",
      title:
          "O‘zbekistonda kuz-qish mavsumi oldidan suv tarmoqlarini sozlash ishlari qanday ketayotgani aytildi",
      userLogo:
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
      images: [
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
      ],
      isLiked: false,
      isBookMarked: false,
      comments: [],
    ),
    PostModel(
      userName: "Botir",
      title:
          "O‘zbekistonda kuz-qish mavsumi oldidan suv tarmoqlarini sozlash ishlari qanday ketayotgani aytildi",
      userLogo:
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
      images: [
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
      ],
      isLiked: false,
      isBookMarked: false,
      comments: [],
    ),
    PostModel(
      userName: "Botir",
      title:
          "O‘zbekistonda kuz-qish mavsumi oldidan suv tarmoqlarini sozlash ishlari qanday ketayotgani aytildi",
      userLogo:
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
      images: [
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
      ],
      isLiked: false,
      isBookMarked: false,
      comments: [
        PostComment(
          "Akmal",
          "$baseUrl${random.nextInt(50)}.jpg",
          "Istoriyamni ko'rmanglar",
        ),
        PostComment(
          "Anvar",
          "$baseUrl${random.nextInt(50)}.jpg",
          "Podpiska tashlanglar, qaytaraman",
        ),
      ],
    ),
    PostModel(
        userName: "Botir",
        title:
            "O‘zbekistonda kuz-qish mavsumi oldidan suv tarmoqlarini sozlash ishlari qanday ketayotgani aytildi",
        userLogo:
            "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        images: [
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        ],
        isLiked: false,
        isBookMarked: false,
        comments: []),
    PostModel(
        userName: "Botir",
        title:
            "O‘zbekistonda kuz-qish mavsumi oldidan suv tarmoqlarini sozlash ishlari qanday ketayotgani aytildi",
        userLogo:
            "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        images: [
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        ],
        isLiked: false,
        isBookMarked: false,
        comments: []),
    PostModel(
        userName: "Botir",
        title:
            "O‘zbekistonda kuz-qish mavsumi oldidan suv tarmoqlarini sozlash ishlari qanday ketayotgani aytildi",
        userLogo:
            "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        images: [
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        ],
        isLiked: false,
        isBookMarked: false,
        comments: []),
    PostModel(
        userName: "Botir",
        title:
            "O‘zbekistonda kuz-qish mavsumi oldidan suv tarmoqlarini sozlash ishlari qanday ketayotgani aytildi",
        userLogo:
            "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        images: [
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        ],
        isLiked: false,
        isBookMarked: false,
        comments: []),
    PostModel(
      userName: "Botir",
      title: "O‘zbekistonda kuz-qish ",
      userLogo:
          "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
      images: [
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
        "https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(50)}.jpg",
      ],
      isLiked: false,
      isBookMarked: false,
      comments: [],
    ),
  ];
}
