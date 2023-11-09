import 'package:eshoppieamal/changepass.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text("Profile",style: TextStyle(color: Colors.black),)),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          SizedBox(height: 20,),
            Container(
            height: 100,
              child: Image.asset("assets/images/profile.png"),
            ),
            SizedBox(height: 10,),
            Center(child: Text("Sheron James",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),)),
             Center(child: Text("9400974713",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 17),)),
              Center(child: Text("sheronjames@gmail.com",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 14),)),
              SizedBox(height: 10,),
              Center(
                child: ElevatedButton(onPressed: (){
                 showModalBottomSheet(context: context, builder: (context) {
                   return ListView(
                     children: [
                       Container(
                        height: 500,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: IconButton(onPressed: (){
                                Navigator.of(context).pop();
                              }, icon: Icon(Icons.close))),
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: TextField(
                                decoration: InputDecoration(
                                   border: OutlineInputBorder(),
                                 label: Text("Sheron")
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                 label: Text("James")
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: TextField(
                                decoration: InputDecoration(
                                   border: OutlineInputBorder(),
                                 label: Text("sheronjames@gmail.com")
                                ),
                              ),
                            ),SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: TextField(
                                decoration: InputDecoration(
                                   border: OutlineInputBorder(),
                                 label: Text("+91 9400974713")
                                ),
                              ),
                            ),
                            SizedBox(height: 7,),
                            SizedBox(width: 370,
                              child: ElevatedButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Chngepasspage(),));
                              },
                              style:  ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 181, 177, 177)
                              ),
                              child: Text("Change Password")),
                            ),
                            SizedBox(height: 7,),
                            SizedBox(width: 370,
                              child: ElevatedButton(onPressed: (){
                                successedit();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepOrangeAccent
                              ), child: Text("UPDATE")),
                            )
                          ],
                        ),
                       ),
                     ],
                   );
                 },);
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrangeAccent
                ),
                child: Text("Edit")),
              )
        ],
      ),
    );
  }
  void successedit(){
    MotionToast(
      animationType: AnimationType.fromBottom,
      title: Text("Updated"),
      description: Text("Successfully"), primaryColor: Colors.deepOrangeAccent).show(context);
  }
}