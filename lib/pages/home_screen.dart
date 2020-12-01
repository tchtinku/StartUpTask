import 'package:flutter/material.dart';
import 'package:ui1/pages/bottomnavitem/home.dart';
import 'package:ui1/pages/bottomnavitem/message.dart';
import 'package:ui1/pages/bottomnavitem/notify.dart';
import 'package:ui1/pages/bottomnavitem/search.dart';
import 'package:ui1/utils/ui1.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  AnimationController animCtrl;
  Animation<double> animation;

  AnimationController animCtrl2;
  Animation<double> animation2;

  bool showFirst = true;

  @override
  void initState() {
    super.initState();

    // Animation init
    animCtrl = new AnimationController(
        duration: new Duration(milliseconds: 500), vsync: this);
    animation = new CurvedAnimation(parent: animCtrl, curve: Curves.easeOut);
    animation.addListener(() {
      this.setState(() {});
    });
    animation.addStatusListener((AnimationStatus status) {});

    animCtrl2 = new AnimationController(
        duration: new Duration(milliseconds: 1000), vsync: this);
    animation2 = new CurvedAnimation(parent: animCtrl2, curve: Curves.easeOut);
    animation2.addListener(() {
      this.setState(() {});
    });
    animation2.addStatusListener((AnimationStatus status) {});
  }

  @override
  void dispose() {
    animCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // title: Text(Freelance.name),
      //   actions: <Widget>[
      //     Padding(
      //       child: Icon(Icons.search),
      //       padding: const EdgeInsets.only(right: 10.0),
      //     ),
         
      //   ],
      // ),
      // drawer: SideBarLayout(),
//       drawer: Drawer(
// SideBarLayout(),
//       ), 
      body: BottomNav(),
     
    );
  }
}

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedPage = 0;
  final _pageOptions = [
    Home(),
    Message(),
    Notify(),
    Search()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: _pageOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: (int index) {
          setState(() {
            _selectedPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color:  Color(0xFF262AAA),
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  color: Color(0xFF262AAA),
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.message_rounded,
                color: Color(0xFF262AAA),
              ),
              title: Text('Message',
                  style: TextStyle(
                    color: Color(0xFF262AAA),
                  ))),
          BottomNavigationBarItem(
             icon: Icon(
                Icons.notifications,
                color: Color(0xFF262AAA),
              ),
              title: Text('Notification',
                  style: TextStyle(
                    color: Color(0xFF262AAA),
                  ))),
                  BottomNavigationBarItem(
             icon: Icon(
                Icons.search,
                color: Color(0xFF262AAA),
              ),
              title: Text('Search',
                  style: TextStyle(
                    color: Color(0xFF262AAA),
                  ))),
        ],
      ),
    );
    
  }
}