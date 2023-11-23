import 'dart:async';

import 'package:dio/dio.dart';
import 'package:eshoppieamal/api/api.dart';
import 'package:eshoppieamal/review.dart';
import 'package:eshoppieamal/shopdeals.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Detailspage extends StatefulWidget {
  String? item1;
   Detailspage({super.key,this.item1});

  @override
  State<Detailspage> createState() => _DetailspageState();
}

class _DetailspageState extends State<Detailspage> {
  Completer<GoogleMapController>_controller=Completer();

  static final CameraPosition _kGoogle= CameraPosition(
    target: LatLng(10.0261,76.3125),
    zoom: 14.4746);
  
    String? sname = "";
    String? img="";
    String? dist="";
    String? add="";
    String? rat="";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  Shopps();
  }

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
         
SizedBox(height: 17,),
          Padding(
            padding: const EdgeInsets.only(left: 50,right: 50),
            child: Container(
              height: 170,
              child: Image.network(img.toString(),fit: BoxFit.fill,),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(sname.toString(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(add.toString(),style: TextStyle(fontSize: 16),),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Icon(Icons.star),
              Text(rat.toString()),
              SizedBox(width: 25,),
              Icon(Icons.location_on),
              Text(dist.toString()),
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
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Phones and Home Appliances ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  ),
                 SizedBox(height: 8,),
                  Text("+12 more deals",style: TextStyle(fontWeight: FontWeight.w400),)
                ],
              ),
              SizedBox(width: 25,),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Dealspage(
                    item2: sname.toString(),
                    item3: img.toString(),
                    item4: add.toString(),
                    item5: dist.toString(),
                    item6: rat.toString(),
                  ),));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrangeAccent
                ), child: Text("VIEW DEALS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15))),
              )
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
                          ),SizedBox(width: 10,),
                          Column(
                            children: [
                              Text("Flat 50% off"),
                              Row(
                                children: [
                                  Text("Valid on"),
                                  SizedBox(width: 2,),
                                  Text("25/12/2023 ",style: TextStyle(color: Colors.deepOrangeAccent),)
                                ],
                              ),
                              
                            ],
                          ),
                    Padding(
                      padding: const EdgeInsets.only(left: 45),
                      child: Column(
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
                      ),
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
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text("Average Cost",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
        ),
        SizedBox(height: 7,),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
         Text("Cost for two -",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14)),
         Text("899",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14))
          ],
        ),
      ),
      Divider(
        thickness: 3,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text("Find us",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
      ),
      SizedBox(height: 15,),
      Padding(
        padding: const EdgeInsets.only(left: 5,right: 5),
        child: Material(elevation: 10,
          child: Container(
            height: 200,width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
             // image: DecorationImage(image: AssetImage("assets/images/map.jpeg"),fit: BoxFit.fill)
            ),
            child: GoogleMap(initialCameraPosition: _kGoogle,
            mapType: MapType.normal,
            myLocationEnabled: true,
            compassEnabled: true,
            onMapCreated: (GoogleMapController controller){
              _controller.complete(controller);
            },
            markers: {
              Marker(markerId: MarkerId('kochi'),
              position: LatLng(10.0261,  76.3125),
              infoWindow: InfoWindow(title: 'Edapally'))
            },),
          ),
        ),
      ),
      SizedBox(height: 10,),

      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text("Address",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
      ),
      SizedBox(height: 7,),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text("Pallath Square,Near Akshay Granites,Vhakkaraparambu,"),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text("Vytila,NH Bypass Road,Ernakulam",),
      ),
      SizedBox(height: 7,),
      Divider(thickness: 3,),
        
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Reviews",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Reviewpage(),));
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text("Write Review",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.deepOrange),),
              ))
          ],
        ),
        SizedBox(height: 7,),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text("Vinay Mohan",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14)),
        ),
        SizedBox(height: 5,),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text("I recently purchased a product and I couldn’t be happier with my online shopping experience. Their website was user-friendly, making it easy to find the perfect item. The checkout process was smooth, and I received my order promptly. It arrived in excellent condition, exactly as described on their website. I’m thrilled with the quality and will definitely shop at eShoppy again in the future. Highly recommended!",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14)),
        ),
        SizedBox(height: 7,),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text("Read all reviews",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.deepOrangeAccent),),
        ),
        SizedBox(height: 7,),
        Divider(thickness: 3,),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text("More info",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
        ),
        SizedBox(height: 7,),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text("Car parking ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
        ),
      SizedBox(height: 5,),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text("Available",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15)),
        )

        ],
      ),
    );
  }
void Shopps()async{
   
  final shopps= await Apiclass().fetchshopview(widget.item1);
  print("/*/*/*/*/*/*---->${shopps[0].shopname}");
  setState(() {
     sname = shopps[0].shopname;
     img = shopps[0].image;
     dist=shopps[0].distance;
     add=shopps[0].address;
     rat=shopps[0].rating;
  });
}
 
}