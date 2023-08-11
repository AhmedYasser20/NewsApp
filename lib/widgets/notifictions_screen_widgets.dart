import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainContainer extends StatelessWidget {
  MainContainer({super.key,required this.imgLink});
  String imgLink;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, "NewsDetails");
      },
      child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Container(
                  width: 345,
                  height: 114,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(imgLink)))
                  ),
                  SizedBox(height: 16,),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical:4.0),
                    child: Text("Monday, 10 May 2021",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical:4.0) ,
                    child: Text("WHO classifies triple-mutant Covid variant from India as global health risk",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),)),
                    Container(
                    padding: const EdgeInsets.symmetric(vertical:4.0) ,
                    child: Text("A World Health Organization official said Monday it is reclassifying the highly contagious triple-mutant Covid variant spreading in India as a “variant of concern,” indicating that it’s become a...Read More",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)),
                    Container(
                    padding: const EdgeInsets.symmetric(vertical:4.0),
                    child: Text("Published by Berkeley Lovelace Jr.",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),),
                  ),
                  SizedBox(height: 24,)
              ],),
            ),
    );
  }
}