import 'package:flutter/material.dart';
import 'package:music/home.dart';
import 'package:music/search.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bottomnavigationbar(),
    ),
  );
}
class bottomnavigationbar extends StatefulWidget {
  @override
  State<bottomnavigationbar> createState() => _bottomnavigationbarState();
}

class _bottomnavigationbarState extends State<bottomnavigationbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: classeslist.elementAt(_selctedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black26,
        backgroundColor: Colors.white24,
        iconSize: 30,
        elevation: 1,
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(Icons.home_outlined),
              label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.music_note), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
        currentIndex: _selctedindex,
        onTap: (int selctedindex) {
          setState(() => _selctedindex = selctedindex);
        },
      ),
    );
  }

  void _onitamtap(int index) {
    setState(() => index = index);
  }

  int _selctedindex = 0;
  static List classeslist = [
    home(),
    searchpage(),
    music(),
    profile(),
  ];
}

class music extends StatelessWidget {
  const music({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
    );
  }
}

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
    );
  }
}
