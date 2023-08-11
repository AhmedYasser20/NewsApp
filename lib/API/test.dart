import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<NewsAPI> fetchNews() async {
  final response = await http
      .get(Uri.parse('https://newsapi.org/v2/top-headlines?country=us&apiKey=aa1eb4d69ab34cb9ba2de4759fa48a18'));

  if (response.statusCode == 200) {
  
    return NewsAPI.fromJson(jsonDecode(response.body));
  }
    throw Exception('Failed to load album');
  }

class NewsAPI {
  final int id;
  final List<dynamic> articles;
 

  const NewsAPI({
    required this.id,
    required this.articles
   
  });

  factory NewsAPI.fromJson(Map<String, dynamic> json) {
    return NewsAPI(
      id: json['totalResults'],
      articles: json['articles']
    );
  }
}


