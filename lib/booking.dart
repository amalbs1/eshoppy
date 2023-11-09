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
          Container(
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
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text("Speakers + Earbuds",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.currency_rupee,size: 15,),
                              Text("999",style: TextStyle(
                                fontWeight: FontWeight.bold,fontSize: 15
                              ),)
                            ],
                          ),
                          Text("1 voucher applied",style: TextStyle(fontWeight: FontWeight.w300),)
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Divider(thickness: 3,),
                ),
               
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text("Have another code",style: TextStyle(color: Colors.deepOrangeAccent),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.chevron_right,color: Colors.deepOrangeAccent,))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Divider(thickness: 3,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total amount payable",style: TextStyle(fontWeight: FontWeight.bold),),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.currency_rupee),
                              Text("999",
                              style: 
                              TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                            ],
                          ),
                          Text("inclusive of all taxes",style: TextStyle(color: Colors.deepOrangeAccent))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),SizedBox(height: 340,),
          ElevatedButton(onPressed: (){
            setState(() {
              showDialog(context: context, builder: (context) => Dialog(
                elevation: 0,
                backgroundColor: Colors.deepOrangeAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  height: 300,width: 400,
                  child: Column(
                    children: [
                     CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.deepOrangeAccent,
                     backgroundImage: AssetImage("assets/images/done1.1.png"),
                     ),
                     Text("Congratulation",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21,color: Colors.white),),
                     SizedBox(height: 10,),
                     Text("Your booking has been confirmed",style: TextStyle(color: Colors.white),),
                     SizedBox(height: 7,),
                     Text("A confirmation email has been sent",style: TextStyle(color: Colors.white)),
                     SizedBox(height: 15,),
                     OutlinedButton(onPressed: (){
                      Navigator.of(context).pop();
                     },
                     style: ButtonStyle(
                      side: MaterialStatePropertyAll(
                        BorderSide(
                          color: Colors.white
                        )
                      )
                     ),
                      child: Text("Close",style: TextStyle(color: Colors.white)))
                    ],
                  ),
                ),
              ),);
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrangeAccent
          ),
           child: Text("CONFIRM BOOKING"))
        ],
      ),
    );
  }
}