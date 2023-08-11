// import 'package:flutter/material.dart';

// import '../widgets/home_screen_widgets.dart';

// class SearchScreen extends StatelessWidget {
//   const SearchScreen({super.key});
//    void _showModal(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       builder: (BuildContext context) {
//         return CustomModalContent();
//       },
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(onPressed: (){_showModal(context);},backgroundColor: Color.fromRGBO(255, 58, 68, 1),child: Icon(Icons.settings_input_composite_rounded),),
//       body: Center(
//         child: Column(
//           children: [
//             Container(
//               padding: EdgeInsets.all(8),
//               child: TextField(
//                 decoration: InputDecoration(
//                               hintText: 'Search Bar',
//                               focusColor: Color.fromRGBO(255, 58, 68, 100),
//                               hoverColor: Color.fromRGBO(255, 58, 68, 100),
//                               prefixIconColor:Color.fromRGBO(255, 58, 68, 100),
//                               prefixIcon: Icon(Icons.search),
//                               border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
//                 ),
//               ),
//             ),
//            Container(
//                 height: 40,
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: 7,
//                   itemBuilder: (BuildContext context, int index) => ListViewItems()),
//               ),
//               SizedBox(height: 10,),
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: 7,
//                   itemBuilder: (BuildContext context,int idx)=>NewsTemp()),
//               )
//           ],
//         ),
//       ),
//     );
//   }
// }