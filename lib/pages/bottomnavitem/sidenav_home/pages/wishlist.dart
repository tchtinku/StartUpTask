import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui1/pages/bottomnavitem/sidenav_home/bloc.navigation_bloc/navigation_bloc.dart';


class Wishlist extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
           Icons.favorite,
           color: Colors.grey,
           ),
                       
          Text(
            "See something you like? Save it!",
            style: TextStyle( fontSize: 16, color: Colors.blueGrey[400]),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left:40.0),
            child: Text(
             'Lists make it easier to compare services so that you can find just the right one for you ',
              style: TextStyle( fontSize: 16, color: Colors.blueGrey[400], fontStyle: FontStyle.italic),
            ),
          ),
          SizedBox(height: 30,),
          GestureDetector(
                      child: Text(
              "Start Shopping",
              style: TextStyle( fontSize: 16, color: Colors.blue),
            ),
            onTap: (){
              
                          BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.HomePageClickedEvent);
            },
          ),
        ],
      ),
    );
  }
}