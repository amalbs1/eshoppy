import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
        title: Center(child: Text("Review Booking",style: TextStyle(color: Colors.black),)),
      ),
      body: ListView(
        children: [
          SizedBox(height: 15,),
          Container(color: Colors.amber,
            height: 200,width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Oxygen Digital Shop",style: TextStyle(fontWeight: FontWeight.bold),),
                  )),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Divider(
                    thickness: 3,color:Colors.deepOrangeAccent ,
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text("Speakers + Earbuds",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                    Row(
                      children: [
                        Icon(Icons.currency_rupee,size: 15,),
                        Text("999",style: TextStyle(
                          fontWeight: FontWeight.bold,fontSize: 15
                        ),)
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}