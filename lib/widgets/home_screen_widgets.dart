import 'package:flutter/material.dart';

class NewsTemp extends StatelessWidget {
    Map<String, dynamic> articles;
   NewsTemp({super.key,required this.articles});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
         onTap: (){
        Navigator.pushNamed(context, "NewsDetails");
      },
        child: Container(
                  height: 128,
                  width: 370,
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(fit: BoxFit.fill,image: NetworkImage("${articles["urlToImage"]}")) ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${articles["title"]}",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.white),)
                      ,Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("${articles["author"]}",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.white),),
                          Text("${articles["publishedAt"]}",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.white),),
                        ],
                      )
                      ],
                    ),
                  ),            
                ),
      ),
    );
  }
}

class ListViewItems extends StatelessWidget {
  const ListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                        margin: EdgeInsets.all(2),
                         // width: 80,
                          height: 20,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 195, 202, 203),
                              borderRadius: BorderRadius.circular(25)),
                          child: TextButton(
                              onPressed: () {
                                //context.read<IndexCubit>().setIndex(temp);
                              },
                              child: Text("Home",style: TextStyle(color: Colors.black)))
      
    );
  }
}

class LastestNewsItem extends StatelessWidget {
  Map<String, dynamic> articles;
   LastestNewsItem({super.key,required this.articles});

  @override
  Widget build(BuildContext context) {
   
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
         onTap: (){
        Navigator.pushNamed(context, "NewsDetails");
      },
        child: Container(
                  height: 240,
                  width: 321,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "${articles["urlToImage"]}"))),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text("${articles["author"]}",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w800,color: Colors.white),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text("${articles["title"]}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),maxLines: 2,),
                      ),
                      SizedBox(height: 29,),
                       Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text("${articles["description"]}",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Colors.white),),
                      ),
                      ],
                  ),
                ),
                ),
      ),
    );
  }
}

class CustomModalContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5, // Half of the screen height
      child: Column(
        children: [
          // Your content widgets here
          Text('Hello from modal bottom sheet'),
          // Add more widgets as needed
        ],
      ),
    );
  }
}
