import 'package:flutter/material.dart';

import '../widgets/notifictions_screen_widgets.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
          Navigator.pop(context);
        },),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Hot Updates",
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(255, 58, 68, 100)),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: SingleChildScrollView(
          child: Column(children: [
          MainContainer(imgLink:"https://images.unsplash.com/photo-1675543951612-fa7a538bab16?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1141&q=80"),
          MainContainer(imgLink:"https://images.unsplash.com/photo-1691016138788-0b6da078739e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1153&q=80"),
          MainContainer(imgLink:"https://images.unsplash.com/photo-1560472644-8aff0574eb10?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1172&q=80"),
          
          ]),
        ),
      ),
    );
  }
}
