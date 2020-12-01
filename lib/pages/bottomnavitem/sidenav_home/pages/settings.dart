import 'package:flutter/material.dart';
import 'package:ui1/pages/bottomnavitem/sidenav_home/bloc.navigation_bloc/navigation_bloc.dart';

class Settings extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         leading: Padding(
           padding: const EdgeInsets.only(left:40.0),
           child: Icon(Icons.arrow_back_ios_outlined ),
         ),
        title: Center(child: Text('Settings', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
       
      ),
      body: 
    ListView(
  children: const <Widget>[
    Card(child: ListTile(title: Text(''))),
    Card(
      child: ListTile(
        
        title: Text('Notifications'),
         trailing: Icon(Icons.arrow_forward_ios_outlined),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('Security'),
        trailing: Icon(Icons.arrow_forward_ios_outlined),
      ),
    ),
    Card(
      child: ListTile(
        
        title: Text('Terms Of Service'),
        trailing: Icon(Icons.arrow_forward_ios_outlined),
      ),
    ),
   
    Card(
      child: ListTile(
        
        title: Text('Privacy'),
        trailing: Icon(Icons.arrow_forward_ios_outlined),
      ),
    ),
    Card(
      child: ListTile(
       
        title: Text('Three-line ListTile'),
        
        trailing: Icon(Icons.arrow_forward_ios_outlined),
       
      ),
    ),
  ],
)
      
    );
  }
}