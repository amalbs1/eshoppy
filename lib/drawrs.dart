import 'package:eshoppieamal/booking.dart';
import 'package:eshoppieamal/fav.dart';
import 'package:eshoppieamal/profile.dart';
import 'package:eshoppieamal/second.dart';
import 'package:flutter/material.dart';

class Drawers extends StatefulWidget {
  const Drawers({super.key});

  @override
  State<Drawers> createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    return   Drawer(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/drwer.jpeg"),fit: BoxFit.fill)
          ),
          child: ListView(
            children: [
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("Hello",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 30,fontWeight: FontWeight.bold),),
                        SizedBox(width: 5,),
                        Text("Abin",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 30,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.deepOrangeAccent,))
                  ],
                ),
              ),
              SizedBox(height: 17,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ListTile(
                  title: Text("My Profile",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 19),),
                  onTap: (){
                   Navigator.push(context, 
                   MaterialPageRoute(builder: (context) => Profilepage(),));
                   
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35),
                child: Divider(
                  color: Colors.white,thickness: 1,
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ListTile(
                  title: Text("My Bookings",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 19),),
                  onTap: (){
               Navigator.push(context, 
                   MaterialPageRoute(builder: (context) => BookingPage(),));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35),
                child: Divider(
                  color: Colors.white,thickness: 1,
                ),
              ),
                Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ListTile(
                  title: Text("My Favorites",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 19),),
                  onTap: (){
               Navigator.push(context, 
                   MaterialPageRoute(builder: (context) => Favoritespage(),));
             
                  },
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(right: 35),
                child: Divider(
                  color: Colors.white,thickness: 1,
                ),
              ),
                Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ListTile(
                  title: Text("Refer A Friend",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 19),),
                  onTap: (){
              
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35),
                child: Divider(
                  color: Colors.white,thickness: 1,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ListTile(
                  title: Text("Notifications",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 19),),
                  onTap: (){
              
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35),
                child: Divider(
                  color: Colors.white,thickness: 1,
                ),
              ),


               Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ListTile(
                  title: Text("Rate App",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 19),),
                  onTap: (){
              
                  },
                ),
              ),
                Padding(
                padding: const EdgeInsets.only(right: 35),
                child: Divider(
                  color: Colors.white,thickness: 1,
                ),
              ),

               Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ListTile(
                  title: Text("Log Out",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 19),),
                  onTap: (){
            showlogout(context);
                  },
                ),
              ),


            ],
          ),
        )
      );
  }
  void showlogout( context){
    showDialog(context: context, builder: (context) {
      return AlertDialog(
        title: Text("Log Out",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        content: Text("Are you sure you want to log out?"),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Cancel",style: TextStyle(color: Colors.deepOrangeAccent),)),
          TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>Secondpage() ,));
          }, child: Text("Ok",style: TextStyle(color: Colors.deepOrangeAccent),))
        ],
      );
    },);
  }
}