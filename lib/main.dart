import 'package:flutter/material.dart';
import 'package:newsapp/screens/SearchScreen.dart';
import 'package:newsapp/screens/home_screen.dart';
import 'package:newsapp/screens/news_details.dart';
import 'package:newsapp/screens/notification_screen.dart';

import 'API/test.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {
  

   const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  

  @override
  void initState() {
    // TODO: implement initState
  
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          "/":(context)=> HomeScreen(),
          "notifictions":(constext)=>NotificationScreen(),
          "NewsDetails":(context)=>NewsDetailsScreen(),
          //"SearchScreen":(context)=>SearchScreen(),
        },
      );
  
  }
}