import 'package:dio/dio.dart';
import 'package:eshoppieamal/api/api.dart';
import 'package:eshoppieamal/changepass.dart';
import 'package:eshoppieamal/registrationpag.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  String? nme="";
  String? num="";
  String? gmail="";
 final fnmecntr = TextEditingController();
 final lstnmecntr = TextEditingController();
 final emilcntr = TextEditingController();
 final phnenmcntr = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      Viewprofile();
    });
    
  }
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
            Center(child: Text(nme.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),)),
             Center(child: Text(num.toString(),style: TextStyle(fontWeight: FontWeight.w300,fontSize: 17),)),
              Center(child: Text(gmail.toString(),style: TextStyle(fontWeight: FontWeight.w300,fontSize: 14),)),
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
                                controller: fnmecntr,
                                decoration: InputDecoration(
                                   border: OutlineInputBorder(),
                                 hintText: "First name"
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: TextField(
                                controller: lstnmecntr,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                 hintText: "Last name"
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: TextField(
                                controller: emilcntr,
                                decoration: InputDecoration(
                                   border: OutlineInputBorder(),
                                 hintText: "email"
                                ),
                              ),
                            ),SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: TextField(
                                controller: phnenmcntr,
                                decoration: InputDecoration(
                                   border: OutlineInputBorder(),
                                 hintText: "Phone number"
                                ),
                              ),
                            ),
                             Row(
  children: [
    
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("Gender :",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
    ),

    Radio(value: "male", 
    fillColor: MaterialStateColor.resolveWith((states) => Colors.deepOrangeAccent),
    groupValue: gender, onChanged: (newvalue){
      setState(() {
        gender=newvalue.toString();
      });
    }),Text("Male"),

     Radio(value: "female", 
     fillColor: MaterialStateColor.resolveWith((states) => Colors.deepOrangeAccent),
    groupValue: gender, onChanged: (newvalue){
      setState(() {
        gender=newvalue.toString();
      });
    }),Text("Female"),

     Radio(value: "others", 
     fillColor: MaterialStateColor.resolveWith((states) => Colors.deepOrangeAccent),
    groupValue: gender, onChanged: (newvalue){
      setState(() {
        gender=newvalue.toString();
      });
    }),Text("Others")
  ],
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
      description: Text("Successfully"),
       primaryColor: Colors.deepOrangeAccent).show(context);
  }
  void Viewprofile()async{
    final formdata= FormData.fromMap({
      "id":"2467"
    });
    final result= await Apiclass().profilUser(formdata);
    print("/*/*/*/*/------>${result![0]}");
    if(result !=null){
      setState(() {
         nme=result[0].fname!;
     num=result[0].mobile!;
     gmail=result[0].email!;
      });
    
    }
  }
}