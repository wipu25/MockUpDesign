import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData.dark(),
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
      Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: TextField(),
      ),
      Icon(
        Icons.camera,
        size: 150,
      ),
      Icon(
        Icons.chat,
        size: 150,
      ),
    ];
    void change(number) => {position.value = number};

    return SafeArea(
      child: Scaffold(
          body: IndexedStack(
            index: position.value,
            children: pageList,
          ),
          extendBody: true,
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: position.value,
              onTap: change,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.message_outlined), label: "Message"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline), label: "Account"),
              ])),
    );
  }
}
