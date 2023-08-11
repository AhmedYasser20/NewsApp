import 'package:flutter/material.dart';
import 'package:newsapp/widgets/home_screen_widgets.dart';

import '../API/test.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
late Future<NewsAPI> futureNews;
  @override
void initState() {
    // TODO: implement initState
    super.initState();
 futureNews =  fetchNews();
  }


  // @override
  // void didChangeDependencies()async {
  //   // TODO: implement didChangeDependencies
  //   super.didChangeDependencies();
  //            futureNews = await fetchNews();
  // }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                height: 30,
                // width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Color.fromRGBO(255, 58, 68, 1),),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        width: 250,
                        height: 100,
                        child: TextField(decoration: InputDecoration(
                          hintText: "Search",
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.search)
                        ),),
                      ),
                      Icon(Icons.notification_add_rounded,color:Color.fromRGBO(255, 58, 68, 1) ,)
                    ],
                ),
              ),
              Container(
                height: 21,
                width: 345,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Latest News",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, 'notifictions');
                      },
                      child: Container(
                          child: Row(
                        children: [
                          Text(
                            "See All",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(255, 58, 68, 1)),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Icon(
                            Icons.arrow_right_alt_outlined,
                            color: Color.fromRGBO(255, 58, 68, 1),
                          )
                        ],
                      )),
                    )
                  ],
                ),
              ),
            FutureBuilder<NewsAPI>(
            future: futureNews,
            builder: (context, snapshot) {
              
              if (snapshot.hasData) {
                print(snapshot.data!.articles);
                return  Container(
                height: 240,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: snapshot.data!.articles.length,
                  itemBuilder: (BuildContext context, int index) => LastestNewsItem(articles:snapshot.data!.articles[index])),
              );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
          Container(
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index) => ListViewItems()),
              ),
                SizedBox(height: 10,),
               FutureBuilder<NewsAPI>(
            future: futureNews,
            builder: (context, snapshot) {
               if (snapshot.hasData) {
               return Expanded(
                child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (BuildContext context,int idx)=>NewsTemp(articles:snapshot.data!.articles[idx])),
              );
               }
              else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
                return const CircularProgressIndicator();
            },
               ),
            
              
              
              
            ],
          ),
        ),
      ),
      
    );
  }
}
