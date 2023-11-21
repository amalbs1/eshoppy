

import 'package:dio/dio.dart';
import 'package:eshoppieamal/api/api.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}
String? gender;
final fnamecntr=TextEditingController();
final lnamecntr=TextEditingController();
final mbilcntr=TextEditingController();
final emailcntr=TextEditingController();
final passwrdcntr=TextEditingController();

class _RegisterscreenState extends State<Registerscreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back))),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25),
            child: Container( height: 550,width: double.infinity,
                  decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(35)),
            color: Colors.white
                  ),
                  child: ListView(
                    children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 20,top: 10),
                       child: Text("Get Started",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                     ),
                     SizedBox(height: 7,),
                     Padding(
                       padding: const EdgeInsets.only(left: 20),
                       child: Text("Please enter your correct information.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                     ),
                      Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
            child: TextField(
              controller: fnamecntr,
              decoration: InputDecoration(
                
              border: newMethod(),
              focusedBorder: fd(),
              prefixIcon: Icon(Icons.person,color: Colors.deepOrangeAccent,),
              hintText: 'First name',
            ),
           
            ),
           ),
            SizedBox(height: 15,),
            Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: TextField(
              controller: lnamecntr,
              decoration: InputDecoration(
                border: newMethod(),
                focusedBorder: fd(),
                prefixIcon: Icon(Icons.person_2,color: Colors.deepOrangeAccent,),
                hintText: 'Last name',
              ),
            ),
           ),
           SizedBox(height: 15,),
           Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: TextField(
              controller: emailcntr,
              decoration: InputDecoration(
                border: newMethod(),
                focusedBorder: fd(),
                prefixIcon: Icon(Icons.email,color: Colors.deepOrangeAccent,),
                hintText: 'Email',
              ),
            ),
           ),
           SizedBox(height: 15,),
           Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: TextField(
              controller: mbilcntr,
              maxLength: 10,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: newMethod(),
                focusedBorder: fd(),
                prefixIcon: Icon(Icons.phone,color: Colors.deepOrangeAccent,),
                hintText: 'Mobile'
              ),
            ),
            ),
   
           Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: TextField(
              controller: passwrdcntr,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password,color: Colors.deepOrangeAccent,),
                border: newMethod(),
                focusedBorder: fd(),
                hintText: 'Password'
              ),
            ),
           ),
           SizedBox(height: 10,),
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
   SizedBox(height: 10,),
   Padding(
     padding: const EdgeInsets.only(left: 120,right: 120),
     child: InkWell(onTap: () {
       registeruser();
     
     },
       child: Container(
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.deepOrangeAccent
        ),
        child: Center(child: Text("Submit",style: TextStyle(
          color: Colors.white,
          fontSize: 15,fontWeight: FontWeight.bold),)),
       ),
     ),
   ),

          
                    ],
                  ),
            ),
          )
        ],
      ),
    );
  }

  OutlineInputBorder fd() {
    return OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              borderSide: BorderSide(color: Colors.deepOrangeAccent)
            );
  }

  OutlineInputBorder newMethod() {
    return OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25))
            );
  }

  void registeruser()async{
   final firstname=fnamecntr.text;
   final lastname=lnamecntr.text;
   final email=emailcntr.text;
   final phone=mbilcntr.text;
   final pass=passwrdcntr.text;

   if(firstname.isEmpty){
    showErrormessage("First name is required");
   }else if(lastname.isEmpty){
    showErrormessage("Last name is required");
   }else if(email.isEmpty){
    showErrormessage("Email is required");
   }else if(phone.isEmpty){
    showErrormessage("Phone number is required");
   }else if(pass.isEmpty){
    showErrormessage("Password is required");
   }else if(gender!.isEmpty){
    showErrormessage("Gender is required");
   }
   else{
    final formdata=FormData.fromMap({
      "firstname":firstname,
      "lastname":lastname,
      "email":email,
      "mobile":phone,
      "gender":gender,
      "password":pass
    });
    final result= await Apiclass().registerUserApi(formdata);
    if(result !=null){
      if(result.status==true){
        showSuccessmessage(result.message!);
      }else{
        showErrormessage(result.message!);
      }
    }
   }
  }

  void showErrormessage(String message){
   MotionToast.error(
    title: Text("Error",style: TextStyle(fontWeight: FontWeight.bold),),
    description: Text(message),
    position: MotionToastPosition.top,
    width: 300,
    height: 80,
    dismissable: false,).show(context);
  }

  void showSuccessmessage(String message){
   MotionToast.success(
    title: Text("Success",style: TextStyle(fontWeight: FontWeight.bold),),
    description: Text(message),
    position: MotionToastPosition.top,
    width: 300,
    height: 80,
    dismissable: false,).show(context);
  }
}




         