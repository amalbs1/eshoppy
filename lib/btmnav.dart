import 'package:eshoppieamal/calndr.dart';
import 'package:eshoppieamal/coupons.dart';
import 'package:eshoppieamal/fav.dart';
import 'package:eshoppieamal/home.dart';
import 'package:eshoppieamal/profile.dart';
import 'package:eshoppieamal/second.dart';
import 'package:flutter/material.dart';

class NavigatnPage extends StatefulWidget {
  const NavigatnPage({super.key});

  @override
  State<NavigatnPage> createState() => _NavigatnPageState();
}
int indexnum=0;
List widgetList=[

];
class _NavigatnPageState extends State<NavigatnPage> {
  @override
  void initState() {
     widgetList=[
  Homepage(),
  CouponsPage(),
  Favoritespage(),
  CalenderPage(),
  Profilepage()
];
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: IconThemeData(
          color: Colors.grey
        ),
        selectedItemColor: Colors.deepOrangeAccent,
        onTap: _selectBottomNavItem,
        
        currentIndex: indexnum,
        items:[
        BottomNavigationBarItem(icon: Icon(Icons.home,),
        label: "Home",
        ),
         BottomNavigationBarItem(icon: Icon(Icons.redeem,),
        label: "Coupons",
        ),
         BottomNavigationBarItem(icon: Icon(Icons.favorite_outline),
        label: "Favorites",
        ),
         BottomNavigationBarItem(icon: Icon(Icons.calendar_today,),
        label: "Calender",
       ),
         BottomNavigationBarItem(icon: Icon(Icons.person,),
        label: "Profile",
        
        )
      ]),
      body: widgetList[indexnum],
    );
  }
   void _selectBottomNavItem(int index) {
    setState(() {
      indexnum = index;
    });
  }
 
}
