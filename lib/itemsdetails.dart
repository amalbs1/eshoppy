import 'package:eshoppieamal/review.dart';
import 'package:eshoppieamal/shopdeals.dart';
import 'package:flutter/material.dart';

class Detailspage extends StatefulWidget {
  const Detailspage({super.key});

  @override
  State<Detailspage> createState() => _DetailspageState();
}

class _DetailspageState extends State<Detailspage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.share,color: Colors.black,))
        ],
      ),
      body: ListView(
        children: [
          // Material(elevation: 15,
          //   child: Container(
          //     height: 50,width: double.infinity,
          //     child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.only(left: 30),
          //           child: IconButton(onPressed: (){
          //             Navigator.pop(context);
          //           }, icon: Icon(Icons.arrow_back)),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.only(right: 35),
          //           child: IconButton(onPressed: (){}, icon: Icon(Icons.share)),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
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
          SizedBox(height: 10,),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 30,width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.greenAccent
                      )
                    ),
                    child: Center(child: Text("UPTO 45% OFF",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.greenAccent),)),
                  ),
                  SizedBox(height: 10,),
                  Text("Phones and Home Appliances ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                 SizedBox(height: 8,),
                  Text("+12 more deals",style: TextStyle(fontWeight: FontWeight.w300),)
                ],
              ),
              SizedBox(width: 50,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Dealspage(),));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrangeAccent
              ), child: Text("VIEW DEALS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)))
            ],
          ),
          Divider(thickness: 2,),
          SizedBox(height: 10,),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 180),
                child: Container(
                  height: 30,width: 100,
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),topRight: Radius.circular(10)
                    )
                  ),
                  child: Center(child: Text("Most Popular",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5,right: 5),
                child: Container(
                  height: 400,width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.deepOrangeAccent
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child:ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                    return  Column(
                    children: [
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 65,width: 75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                image: DecorationImage(image: AssetImage("assets/images/speakers.jpeg"))
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text("Flat 50% off"),
                              Row(
                                children: [
                                  Text("Valid on"),
                                  SizedBox(width: 2,),
                                  Text("25/12/2023 12:30 pm",style: TextStyle(color: Colors.deepOrangeAccent),)
                                ],
                              ),
                              
                            ],
                          ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.currency_rupee,size: 15,),
                            Text("350",style: TextStyle(decoration: TextDecoration.lineThrough,fontSize: 15),),
                            SizedBox(width: 10,),
                            Icon(Icons.currency_rupee),
                            Text("175",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19,color: Colors.deepOrangeAccent),)
                          ],
                        ),
                        Row(
                          children: [
                            Text("Save"),
                            Icon(Icons.currency_rupee,size: 15,),
                            Text("350")
                          ],
                        ),
                        ElevatedButton(onPressed: (){}, 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrangeAccent
                        ),
                        child: Text("VIEW"))
                      ],
                    )
                        ],
                      ),
                      SizedBox(height: 20,)
                    ],
                                    );
                  },)
                ),
              ),
              SizedBox(height: 10,),
              Text("VIEW ALL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.deepOrangeAccent),),
              SizedBox(height: 15,),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text("About this place",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text("Timings",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          ),SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 10,),
            child: Row(
              children: [
                Text("Mon-Sun",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                SizedBox(width: 15,),
                Text("11 AM-11 PM",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
              ],
            ),
          ),
          SizedBox(height: 7,),
          Divider(thickness: 3,),
        Text("Average Cost",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
        SizedBox(height: 7,),
      Row(
        children: [
       Text("Cost for two -",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14)),
       Text("899",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14))
        ],
      ),
      Divider(
        thickness: 3,
      ),
      Text("Find us",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
      SizedBox(height: 15,),
      Padding(
        padding: const EdgeInsets.only(left: 5,right: 5),
        child: Material(elevation: 10,
          child: Container(
            height: 200,width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              image: DecorationImage(image: AssetImage("assets/images/map.jpeg"),fit: BoxFit.fill)
            ),
          ),
        ),
      ),
      SizedBox(height: 10,),

      Text("Address",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
      SizedBox(height: 7,),
      Text("Pallath Square,Near Akshay Granites,Vhakkaraparambu,"),
      Text("Vytila,NH Bypass Road,Ernakulam",),
      SizedBox(height: 7,),
      Divider(thickness: 3,),
        
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Review (18)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Reviewpage(),));
              },
              child: Text("Write Review",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.deepOrange),))
          ],
        ),
        SizedBox(height: 7,),
        Text("Vinay Mohan",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14)),
        SizedBox(height: 5,),
        Text("I recently purchased a product and I couldn’t be happier with my online shopping experience. Their website was user-friendly, making it easy to find the perfect item. The checkout process was smooth, and I received my order promptly. It arrived in excellent condition, exactly as described on their website. I’m thrilled with the quality and will definitely shop at [Store Name] again in the future. Highly recommended!",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14)),
        SizedBox(height: 7,),
        Text("Read all reviews",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.deepOrangeAccent),),
        SizedBox(height: 7,),
        Divider(thickness: 3,),
        Text("More info",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
        SizedBox(height: 7,),
        Text("Car parking ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
      SizedBox(height: 5,),
        Text("Available",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15))

        ],
      ),
    );
  }
}