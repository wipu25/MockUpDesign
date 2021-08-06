import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:state_handling/common/color.dart';

import 'navpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final position = useState(0);
    final number = useState(0);
    final List<Widget> pageList = [
      NavPage(),
      Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.lightBlue,
          ),
          Scaffold(
            backgroundColor: Colors.yellow,
          )
        ],
      ),
      Icon(
        Icons.chat,
        size: 150,
      ),
    ];
    void change(number) => {position.value = number};

    return Scaffold(
        body: IndexedStack(
          index: position.value,
          children: pageList,
        ),
        extendBody: true,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor:  white,
          elevation: 0.0,
          showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: position.value,
            onTap: change,
            items: [
              BottomNavigationBarItem(icon: UnActiveIcon(Icons.assistant_navigation), label: "Home",activeIcon: ActiveIcon(Icons.assistant_navigation)),
              BottomNavigationBarItem(icon: UnActiveIcon(Icons.location_pin), label: "Message",activeIcon: ActiveIcon(Icons.location_pin)),
              BottomNavigationBarItem(icon: UnActiveIcon(Icons.person), label: "Profile",activeIcon: ActiveIcon(Icons.person)),
            ]));
  }

  Widget ActiveIcon(IconData icon) {
    return Column(
      children: [
        Icon(Icons.circle, size: 5, color: lightBlack),
        SizedBox(height: 2),
        Icon(icon, color: lightBlack)
      ],
    );
  }

  Widget UnActiveIcon(IconData icon){
    return Column(
      children: [
        SizedBox(height: 7),
        Icon(icon, color: mediumGrey,)
      ],
    );
  }
}