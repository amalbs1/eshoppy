import 'package:eshoppieamal/calndr.dart';
import 'package:eshoppieamal/coupons.dart';
import 'package:eshoppieamal/fav.dart';
import 'package:eshoppieamal/home.dart';
import 'package:eshoppieamal/profile.dart';
import 'package:flutter/material.dart';

class NavigatnPage extends StatefulWidget {
  const NavigatnPage({super.key});

  @override
  State<NavigatnPage> createState() => _NavigatnPageState();
}
int indexnum=0;
List widgetList=[
  Homepage(),
  CouponsPage(),
  Favoritespage(),
  CalenderPage(),
  Profilepage()
];
class _NavigatnPageState extends State<NavigatnPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
             indexnum=index;
          });
         
        },
        currentIndex: indexnum,
        items:[
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.deepOrangeAccent,),
        label: "Home",
        ),
         BottomNavigationBarItem(icon: Icon(Icons.redeem,color: Colors.deepOrangeAccent,),
        label: "Coupons",
        ),
         BottomNavigationBarItem(icon: Icon(Icons.favorite_outline,color: Colors.deepOrangeAccent,),
        label: "Favorites",
        ),
         BottomNavigationBarItem(icon: Icon(Icons.calendar_today,color: Colors.deepOrangeAccent,),
        label: "Calender",
       ),
         BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.deepOrangeAccent,),
        label: "Profile",
        
        )
      ]),
      body: widgetList[indexnum],
    );
  }
}