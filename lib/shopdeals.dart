import 'package:eshoppieamal/booking.dart';
import 'package:flutter/material.dart';

class Dealspage extends StatefulWidget {
  String? item2;
  String? item3;
  String? item4;
  String? item5;
  String? item6;
   Dealspage({super.key,this.item2,this.item3,this.item4,this.item5,this.item6});

  @override
  State<Dealspage> createState() => _DealspageState();
}
int a=0;
class _DealspageState extends State<Dealspage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.item2.toString(),style: TextStyle(color: Colors.black),)),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          SizedBox(height: 4,),
          
        
          Padding(
            padding: const EdgeInsets.only(left: 50,right: 50),
            child: Container(
              height: 170,
              child: Image.network(widget.item3.toString(),fit: BoxFit.fill,),
            ),
          ),
            SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(widget.item2.toString(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(widget.item4.toString(),style: TextStyle(fontSize: 16),),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Icon(Icons.star),
              Text(widget.item6.toString()),
              SizedBox(width: 25,),
              Icon(Icons.location_on),
              Text(widget.item5.toString()),
              SizedBox(width: 25,),
              Icon(Icons.favorite,color: Colors.red,),
              Text("88 favorited this")
            ],
          ),
          Divider(thickness: 2,),
          SizedBox(height: 7,),
      Container(
        height: 400,width: double.infinity,
        child: ListView.builder(
        // physics: NeverScrollableScrollPhysics(),
          itemCount: 2,
          itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(height: 15,),
              Material(elevation: 10,
              borderRadius: BorderRadius.all(Radius.circular(7)),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7))
                  ),
                  height: 200,width: double.infinity,
                  child: Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text("Valid on",style: TextStyle(fontWeight: FontWeight.w300),),
                              Text("All days",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                          Text("98 bought",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Divider(
                          thickness: 3,color: Colors.deepOrangeAccent,
                        ),
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("Speakers + Earbuds",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                             Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text("Timing"),
                                ),
                                SizedBox(width: 15,),
                                Text("11 AM - 11 PM",style: TextStyle(fontWeight: FontWeight.bold))
                              ],
                             ),
                              Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("Valid for"),
                                ),
                                SizedBox(width: 35,),
                                Text("1 person",style: TextStyle(fontWeight: FontWeight.bold))
                              ],
                             )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 30,width: 65,
                               
                                decoration: BoxDecoration(
                                   
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  border: Border.all(
                                    color: Colors.greenAccent
                                  )
                                ),
                                child: Center(
                                  child: Text("16% off",style: TextStyle(color: Colors.greenAccent,),),
                                ),
                              ),SizedBox(height: 10,),
                              Row(
                                children: [
                                  Icon(Icons.currency_rupee,size: 14,),
                                  Text("1500",style: TextStyle(decoration: TextDecoration.lineThrough,fontWeight: FontWeight.w300),),
                                  Icon(Icons.currency_rupee,size: 16,),
                                  Text("999",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                                ],
                              ),SizedBox(height: 7,),
                              Text("Inc. of all taxes",style: TextStyle(fontWeight: FontWeight.w300),)
                            ],
                          )
                        ],
                      ),SizedBox(height: 7,),
                      Divider(thickness: 2,),
                      SizedBox(height: 10,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              OutlinedButton(onPressed: (){},
                              style: ButtonStyle(
                                side: MaterialStatePropertyAll(BorderSide(color: Colors.orange))
                              ),
                               child: Text("Details",style: TextStyle(color: Colors.orange),)),
                               SizedBox(width: 10,),
                              OutlinedButton(onPressed: (){},
                              style: ButtonStyle(
                                side: MaterialStatePropertyAll(BorderSide(color: Colors.orange))
                              ), child: Text("Menu",style: TextStyle(color: Colors.orange),))
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Row(
                              children: [
                                ElevatedButton(onPressed: (){
                                  setState(() {
                                    a=a-1;
                                  });
                                }, 
                                 style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.deepOrangeAccent
                                        ),
                                child: Text("-")),
                                SizedBox(width: 6,),
                                Text(a.toString(),style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(width: 6,),
                                ElevatedButton(onPressed: (){
                                  setState(() {
                                    a=a+1;
                                  });
                                }, 
                                 style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.deepOrangeAccent
                                        ),
                                child: Text("+")),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            
            ],
          );
        },),
      ),
        SizedBox(height: 10,),

           Align(alignment: AlignmentDirectional.bottomCenter,
             child: Material(shadowColor: Colors.grey,
               child: Container(
                height: 50,width: double.infinity,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("1 item in cart",style: TextStyle(fontWeight: FontWeight.w300),),
                        Row(
                          children: [
                            Icon(Icons.currency_rupee,size: 15,),
                            Text("999",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                          ],
                        ),
                        Text("Inc. of all taxes",style: TextStyle(fontWeight: FontWeight.w300),)
                      ],
                    ),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BookingPage(),));
                    }, 
                     style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.deepOrangeAccent
                                          ),
                    child: Text("REVIEW BOOKING"))
                  ],
                ),
               ),
             ),
           )    
        ],
      ),
    );
  }
}