import 'package:flutter/material.dart';

class NewsDetailsScreen extends StatelessWidget {
  const NewsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: Color.fromRGBO(255, 58, 68, 1),child: Icon(Icons.favorite_border),),
      body: Container(
        width: 375,
        height: 812,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              width: 375,
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage( fit: BoxFit.fill,image: NetworkImage("https://images.unsplash.com/photo-1691087853398-510be1f9624f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=385&q=80"))
              ),
            ),
           Positioned(
            top:340 ,
             child: Column(
               children: [
                 Container(
                  width: 335,
                  height: 389,
                  padding: EdgeInsets.only(top:88,left: 15,right: 15,bottom: 16),
                    decoration: BoxDecoration(
                      color:Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
                    ),
                    child: SingleChildScrollView(
                      child: Container(
                        child: 
                          Text(
                            style:TextStyle(fontSize: 14,fontWeight: FontWeight.w400)
                            ,"LONDON Cryptocurrencies have no intrinsic value and people who invest in them should be prepared to lose all their money, Bank of England Governor Andrew Bailey said.Digital currencies like bitcoin, ether and even dogecoin have been on a tear this year, reminding some investors of the 2017 crypto bubble in which bitcoin blasted toward \$20,000, only to sink as low as \$3,122 a year later.Asked at a press conference Thursday about the rising value of cryptocurrencies, Bailey said: They have no intrinsic value. That doesn't mean to say people don't put value on them, because they can have extrinsic value. But they have no intrinsic value.I'm going to say this very bluntly again, he added. Buy them only if you're prepared to lose all your money.Bailey's comments echoed a similar warning from the UK's Financial Conduct Authority.Investing in cryptoassets, or investments and lending linked to them, generally involves taking very high risks with investors' money, the financial services watchdog said in January.If consumers invest in these types of product, they should be prepared to lose all their money.Bailey, who was formerly the chief executive of the FCA, has long been a skeptic of crypto. In 2017, he warned: If you want to invest in bitcoin, be prepared to lose all your money."),
                        
                      ),
                    ),
                 ),
               ],
             ),
           ),
           Positioned(
            top: 10,
            left: 10,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Color.fromRGBO(245,245,245,0.5),
                borderRadius: BorderRadius.circular(8)
              ),
              child: IconButton(onPressed: (){
                Navigator.pop(context);
            
              }, icon: Icon(Icons.arrow_back)),
            ),
           ),
            Positioned(
              top:270,
              left: 35,
              right: 35,
              child: Container(
                width: 311,
                height: 149,
                padding: EdgeInsets.symmetric(horizontal: 24,vertical: 16),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(245,245,245,0.5),
                  borderRadius: BorderRadius.circular(16)
                ) ,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Text("Sunday, 9 May 2021",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Text("Crypto investors should be prepared to lose all their money, BOE governor says",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Text("Published by Ryan Browne",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w800),),
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
