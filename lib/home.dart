import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:eshoppieamal/api.dart';
import 'package:eshoppieamal/productmodel.dart';
import 'package:eshoppieamal/registermodel.dart';
import 'package:eshoppieamal/shoppingpage.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

String? dropdownvalue = "Kochi";
var city = ["Kochi", "Trivandrum", "Kollam", "Allepy", "Bangalore"];

class _HomepageState extends State<Homepage> {
  ValueNotifier<List<Product>> productlist= ValueNotifier([]);
  late List<Product>products=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Apiclass.instance.fetchhome();

  }
 
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Center(
            child: Text(
          "e-Shoppy",
          style: TextStyle(color: Colors.white),
        )),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
  
      body: ListView(
        children: [
          
          SizedBox(height: 10),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.location_on),
                    Text(
                      "Palarivattom,Kochi",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: DropdownButtonFormField(
                      icon: Icon(Icons.keyboard_arrow_down),
                      decoration: InputDecoration(
                        label: Text(
                          "Choose city or area",
                          style: TextStyle(color: Colors.black),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.deepOrangeAccent)),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                      value: dropdownvalue,
                      items: city.map((e) {
                        return DropdownMenuItem(value: e, child: Text(e));
                      }).toList(),
                      onChanged: (String? newvalue) {
                        setState(() {
                          dropdownvalue = newvalue!;
                        });
                      }),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 24),
            child: Container(
              height: 140,
              width: double.infinity,
              child: Card(
                 
                  elevation: 25,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage("assets/images/amal1.2.jpeg"),
                            fit: BoxFit.fill)),
                  )),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "OFFERS FOR YOU",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              InkWell(
                  onTap: () {},
                  child: Text(
                    "VIEW ALL (72)",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrangeAccent),
                  ))
            ],
          ),
          SizedBox(height: 10,),
          InkWell(onTap: () {
           Navigator.push(context, MaterialPageRoute(builder: (context) => Shopping(),));
          },
            child: Container(decoration: BoxDecoration(
              
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
              height: 400,width: double.infinity,
              child: ValueListenableBuilder(valueListenable: productlist,
               builder: (context, List<Product> newproduct, child) {
                 return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 20),
                itemCount: newproduct.length,
                itemBuilder: (context, index) {
                  final pdct=productlist.value[index];
                  return Container(
                   
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                   
                    image: DecorationImage(image: NetworkImage(pdct.image.toString()),fit: BoxFit.fill)
                   ),
                  child: Column(
                    children: [
                      Align(alignment: Alignment.topRight,
                        child: Container(
                          height: 55,width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(18),bottomLeft: Radius.circular(18)),
                            color: Colors.deepOrangeAccent
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 2,),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Text("UPTO",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
                              ),
                              Text("57%",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text("OFF",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 92),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text(products[index].productName!,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                        
                          Row(
                            children: [
                              
                           Image.asset("assets/images/amal1.4.png",color: Colors.white,),
                             Text("62 Offers",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                            ],
                          ),
                       
                          ],
                        ),
                      ),
                        
                    ],
                  ),
                  );
                },
              );
               },)
            ),
          ),
          SizedBox(height: 15,),
          Container(
                        height: 120,width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                         image: DecorationImage(image: AssetImage("assets/images/amal1.5.1.jpg"))
                        ),
                       ),
                       SizedBox(height: 20,)
        ],
      ),
    );
  }
}
