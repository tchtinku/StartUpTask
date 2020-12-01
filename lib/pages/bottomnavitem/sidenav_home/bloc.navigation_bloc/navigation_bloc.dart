import 'package:bloc/bloc.dart';
import 'package:ui1/pages/bottomnavitem/sidenav_home/pages/homepage.dart';
import 'package:ui1/pages/bottomnavitem/sidenav_home/pages/myinterestpage.dart';
import 'package:ui1/pages/bottomnavitem/sidenav_home/pages/myorderspage.dart';
import 'package:ui1/pages/bottomnavitem/sidenav_home/pages/settings.dart';
import 'package:ui1/pages/bottomnavitem/sidenav_home/pages/wishlist.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  MyInterestClickedEvent,
  MyOrdersClickedEvent,
  WishlistClickedEvent,
  SettingsClickedEvent
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  
  @override
  NavigationStates get initialState => MyInterestPage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.MyInterestClickedEvent:
        yield MyInterestPage();
        break;
      case NavigationEvents.MyOrdersClickedEvent:
        yield MyOrdersPage();
        break;
      case NavigationEvents.WishlistClickedEvent:
        yield Wishlist();
        break;
      case NavigationEvents.SettingsClickedEvent:
        yield Settings();
        break;
    }
  }
}