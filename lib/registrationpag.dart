import 'package:flutter/material.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}
var gvalue="";

class _RegisterscreenState extends State<Registerscreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: ListView(
        children: [
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
    groupValue: gvalue, onChanged: (newvalue){
      setState(() {
        gvalue=newvalue.toString();
      });
    }),Text("Male"),

     Radio(value: "female", 
     fillColor: MaterialStateColor.resolveWith((states) => Colors.deepOrangeAccent),
    groupValue: gvalue, onChanged: (newvalue){
      setState(() {
        gvalue=newvalue.toString();
      });
    }),Text("Female"),

     Radio(value: "others", 
     fillColor: MaterialStateColor.resolveWith((states) => Colors.deepOrangeAccent),
    groupValue: gvalue, onChanged: (newvalue){
      setState(() {
        gvalue=newvalue.toString();
      });
    }),Text("Others")
  ],
 ),
   SizedBox(height: 10,),
   Padding(
     padding: const EdgeInsets.only(left: 120,right: 120),
     child: InkWell(onTap: () {
       
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
   )
          
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
}



//           SizedBox(height: 15,),
         
//           SizedBox(height: 15,),
         
//           SizedBox(height: 15,),
          
         
         