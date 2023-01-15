import 'package:flutter/material.dart';
import 'package:pikto/HomePage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  Color colors = Colors.amber;
  int currentTabIndex = 0;
  List<Widget> tabs = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: tabs[currentTabIndex]),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(color: colors),
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: onTapped,
        currentIndex: currentTabIndex,
        selectedItemColor: Color.fromRGBO(50, 69, 148, 1),
        // unselectedFontSize: 20.0,
        unselectedItemColor: Colors.grey[500],
        // showUnselectedLabels: false,
        unselectedIconTheme: IconThemeData(
          color: Colors.grey[300],
          size: 20,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.grey,),
            label: 'الرئيسية',
            activeIcon: new Icon(Icons.home,color:Color.fromRGBO(50, 69, 148, 1),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.reorder, color: Colors.grey,),
            label: 'طلباتك',
            activeIcon: new Icon(Icons.reorder,color:Color.fromRGBO(50, 69, 148, 1),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, color: Colors.grey,),
            label: 'المفضلة',
            activeIcon: new Icon(Icons.favorite,color: Color.fromRGBO(50, 69, 148, 1),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded, color: Colors.grey,),
            label: 'صفحتي',
            activeIcon: new Icon(Icons.account_circle,color: Color.fromRGBO(50, 69, 148, 1),),
          ),
        ],
      ),
    );
  }
}
