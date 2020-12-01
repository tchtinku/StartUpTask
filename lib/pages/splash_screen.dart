import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ui1/utils/my_navigator.dart';
import 'package:ui1/utils/ui1.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () => MyNavigator.goToIntro(context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Color(0xFF262AAA)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 50.0,
                         backgroundImage: AssetImage(
                         'asset/image/freelance1.png'
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        Freelance.name,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0),
                      ),
                //       MaterialButton(
                //   elevation: 0,
                //   height: 50,
                //   onPressed: () {
                //     // Navigator.push(context,
                //     //     MaterialPageRoute(builder: (_) => LoginScreen()));
                //   },
                //   color: Colors.yellow,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: <Widget>[
                //       Text('Get Started',
                //           style: TextStyle(color: Colors.white, fontSize: 20)),
                //       Icon(Icons.arrow_forward_ios)
                //     ],
                //   ),
                //   textColor: Colors.white,
                // )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                      Freelance.store,
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}