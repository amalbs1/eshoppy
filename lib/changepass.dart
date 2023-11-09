import 'package:flutter/material.dart';

class Chngepasspage extends StatefulWidget {
  const Chngepasspage({super.key});

  @override
  State<Chngepasspage> createState() => _ChngepasspageState();
}

class _ChngepasspageState extends State<Chngepasspage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.close,color: Colors.black,))
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Current password",
                border: OutlineInputBorder()
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "New password",
                border: OutlineInputBorder()
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Confirm password",
                border: OutlineInputBorder()
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25),
            child: ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrangeAccent
            ),
            child: Text("SUBMIT")),
          )
        ],
      ),
    );
  }
}