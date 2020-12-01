// import 'package:flutter/material.dart';
// import 'package:ui1/pages/bottomnavitem/sidenav_home/bloc.navigation_bloc/navigation_bloc.dart';

// class MyInterestPage extends StatefulWidget with NavigationStates {
//   @override
//   _MyInterestPageState createState() => _MyInterestPageState();
// }

// class _MyInterestPageState extends State<MyInterestPage> {

//   List<String> events = [
//     "Calender",
//     "Family",
//     "Friends",
//     "Lovely",
//     "Me",
//     "Team"
//   ]; 
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//        Padding(
//          padding: const EdgeInsets.only(left:40.0, top: 50),
//          child: Text(
//                             "Explore New Opportunities",
//                             style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold), 
//                             ),
//        ),
       
                       
//                      ],);
//                    }
                 
               
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui1/pages/bottomnavitem/sidenav_home/bloc.navigation_bloc/navigation_bloc.dart';



class MyInterestPage extends StatefulWidget with NavigationStates {
  @override
  _MyInterestPageState createState() => _MyInterestPageState();
}

class _MyInterestPageState extends State<MyInterestPage> {

  final List<String> _listItem = [
     'asset/image/freelance1.png',
     'asset/image/GraphicDesignIcon.png',
     'asset/image/ImageEditing.png',
     'asset/image/OnlineAdvertising.png',
     'asset/image/photography.png',
     'asset/image/socialmedia.jpg',
     'asset/image/videoEditing.png',
     'asset/image/socialmedia.jpg',
     'asset/image/videoEditing.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[

               Padding(
         padding: const EdgeInsets.only(left:40.0, top: 50),
         child: Text(
                            "Explore New Opportunities",
                            style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold), 
                            ),
       ),
              // Container(
              //   width: double.infinity,
              //   height: 250,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(20),
              //     image: DecorationImage(
              //       image: AssetImage('asset/image/socialmedia.jpg'),
              //       fit: BoxFit.cover
              //     )
              //   ),
              //   child: Container(
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(20),
              //       gradient: LinearGradient(
              //         begin: Alignment.bottomRight,
              //         colors: [
              //           Colors.black.withOpacity(.4),
              //           Colors.black.withOpacity(.2),
              //         ]
              //       )
              //     ),
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.end,
              //       children: <Widget>[
              //         Text("Lifestyle Sale", style: TextStyle(color: Colors.yellow, fontSize: 35, fontWeight: FontWeight.bold),),
              //         SizedBox(height: 30,),
              //         Container(
              //           height: 50,
              //           margin: EdgeInsets.symmetric(horizontal: 40),
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10),
              //             color: Colors.yellow
              //           ),
              //           child: Center(child: Text("Shop Now", style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold),)),
              //         ),
              //         SizedBox(height: 30,),
              //       ],
              //     ),
              //   ),
              // ),
              SizedBox(height: 20,),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: _listItem.map((item) => Card(
                    color: Colors.transparent,
                    elevation: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(item),
                          
                        )
                      ),
                      child: Transform.translate(
                        offset: Offset(50, 40),
                        child: Container(
                          width: 300,
                          margin: EdgeInsets.symmetric(horizontal: 65, vertical: 63),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.yellow
                          ),
                        
                        ),
                      ),
                    ),
                  )).toList(),
                )
              )
            ],
          ),
        ),
      );
    
  }
}