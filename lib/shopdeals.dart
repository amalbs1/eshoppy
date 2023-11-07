import 'package:flutter/material.dart';

class Dealspage extends StatefulWidget {
  const Dealspage({super.key});

  @override
  State<Dealspage> createState() => _DealspageState();
}

class _DealspageState extends State<Dealspage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 4,),
          Material(elevation: 10,
            child: Container(
              height: 50,width: double.infinity,
              child: Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back)),
                  SizedBox(width: 70,),
                  Text("Oxygen Digital Shop",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
                ],
              ),
            ),
          ),
          SizedBox(height: 17,),
          Padding(
            padding: const EdgeInsets.only(left: 50,right: 50),
            child: Container(
              height: 170,
              child: Image.asset("assets/images/shop.png",fit: BoxFit.fill,),
            ),
          ),
            SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text("Oxygen Digital Hub",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text("MG Road near MP Mall,Ernakulam South",style: TextStyle(fontSize: 16),),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Icon(Icons.star),
              Text("4.8 ratings"),
              SizedBox(width: 25,),
              Icon(Icons.location_on),
              Text("12.5 km away"),
              SizedBox(width: 25,),
              Icon(Icons.favorite,color: Colors.red,),
              Text("88 favorited this")
            ],
          ),
          Divider(thickness: 2,),
          ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
            return ;
          },)
        ],
      ),
    );
  }
}