import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

class Reviewpage extends StatefulWidget {
  const Reviewpage({super.key});

  @override
  State<Reviewpage> createState() => _ReviewpageState();
}

class _ReviewpageState extends State<Reviewpage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.close,color: Colors.black,))
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Name",
                
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
            ),
          ),
          SizedBox(height:15),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: TextField(
            maxLines: 10,
              decoration: InputDecoration(
                hintText: "Write review",
               
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
            ),
          ),
          SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: ElevatedButton(onPressed: (){
              // Navigator.pop(context);
              successtoast();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrangeAccent
            ),
             child: Text("Submit")),
          )
        ],
      ),
    );
  }
  void successtoast(){
    MotionToast(
      animationType: AnimationType.fromRight,
      title: Text("Successfully"),
      description: Text("Review Submitted"), primaryColor: Colors.deepOrangeAccent).show(context);
  }
}