import 'package:flutter/material.dart';
import '../../home_screen/home_screen.dart';
import '../../widgets/coming_soon.dart';

class BottomNavProvider extends ChangeNotifier {
  //

  int screenIndex = 0;

  Widget currentWidget = const HomeScreen();

  List<Widget> screens = [
    const HomeScreen(),
    const ComingSoon(),
    const ComingSoon(),
    const ComingSoon()
  ];

  updateCurrentScreen(index) {
    currentWidget = screens[index];
    screenIndex = index;
    notifyListeners();
  }

  //
}
