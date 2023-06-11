import 'package:aseet_data/page/favourite_page.dart';
import 'package:aseet_data/page/home_page.dart';
import 'package:aseet_data/page/profile_page.dart';
import 'package:aseet_data/page/search_page.dart';
import 'package:aseet_data/page/settings_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 2;

  final screens = [
    HomePage(),
    SearchPage(),
    AddPage(),
    ListPage(),
    // ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(
        Icons.home,
        size: 30,
        color: Colors.redAccent,
      ),
      Icon(Icons.search, size: 30),
      Icon(Icons.add, size: 30),
      Icon(Icons.list_outlined, size: 30),
      //   Icon(Icons.person_outline, size: 30),
    ];
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   title: Text(''),
      //  backgroundColor: Colors.grey.shade200,
      //   elevation: 0,
      //  centerTitle: false,
      // ),
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: IconThemeData(color: Colors.black)),
        child: CurvedNavigationBar(
          key: navigationKey,
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.transparent,
          height: 65,
          index: index,
          items: items,
          onTap: (index) => setState(() => this.index = index),
        ),
      ),
    );
  }
}
