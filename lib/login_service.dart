import 'package:flutter/material.dart';
import 'package:http/http.dart';

//class HttpService {
//  final String postsURL = "https://jsonplaceholder.typicode.com/posts";
//
//  Future<List<Post>> callLogin() async {
//    Response res = await post(postsURL, body: );
//
//    if (res.statusCode == 200) {
//
//      return posts;
//    } else {
//      throw "Can't get posts.";
//    }
//  }
//}

class Post {
  final int email;
  final int password;


  Post({
    @required this.email,
    @required this.password,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      email: json['email'] as int,
      password: json['password'] as int,
    );
  }
}
