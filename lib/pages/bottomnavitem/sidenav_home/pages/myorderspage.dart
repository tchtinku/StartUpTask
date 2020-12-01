import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui1/pages/bottomnavitem/sidenav_home/bloc.navigation_bloc/navigation_bloc.dart';


class MyOrdersPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "No Orders Yet",
            style: TextStyle( fontSize: 16, color: Colors.blueGrey[400]),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left:40.0),
            child: Text(
             ' "Try again; you have millions of alternatives. Fill yourself with the bullets of hope and you will kill failure with one shot." ',
              style: TextStyle( fontSize: 16, color: Colors.blueGrey[400], fontStyle: FontStyle.italic),
            ),
          ),
          SizedBox(height: 30,),
          GestureDetector(
                      child: Text(
              "Let's give one more shot",
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