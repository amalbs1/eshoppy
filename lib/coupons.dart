import 'package:flutter/material.dart';

class CouponsPage extends StatefulWidget {
  const CouponsPage({super.key});

  @override
  State<CouponsPage> createState() => _CouponsPageState();
}

class _CouponsPageState extends State<CouponsPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(
      title: Center(child: Text("Super Deals")),
      backgroundColor: Colors.deepOrangeAccent,
      actions: [
       IconButton(onPressed: (){}, icon: Icon(Icons.search))
      ],
     ),
     drawer: Drawer(),
     body: ListView.builder(
      
       itemCount: 3,
       itemBuilder: (context, index) {
       return Column(
         children: [
          SizedBox(height: 25,),
           Material(elevation: 13,
           borderRadius: BorderRadius.all(Radius.circular(15)),
             child: Container(
               height: 180,width: double.infinity,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(15)),
                
               ),
               child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Valid till",style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(width: 3,),
                            Text("25/12/2023",style: TextStyle(color: Colors.deepOrangeAccent),)
                          ],
                        ),
                        Text("25 Used",style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Divider(thickness: 3,color: Colors.deepOrangeAccent,),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Container(
                          height: 50,width: 65,
                          decoration: BoxDecoration(
                           image: DecorationImage(image: AssetImage("assets/images/speakers.jpeg")),
                          
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 130),
                        child: Text("Get 50% Discount"),
                      ),
           
                      IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Divider(thickness: 2,),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 7),
                            child: Text("Current Deal Price",style: TextStyle(fontWeight: FontWeight.w300),),
                          ),
                          SizedBox(height: 7,),
                          Row(
                            children: [
                              Icon(Icons.currency_rupee,size: 15,),
                              Text("3000",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                              SizedBox(width: 5,),
                              Icon(Icons.currency_rupee,size: 15,),
                              Text("5960",style: TextStyle(decoration: TextDecoration.lineThrough,fontWeight: FontWeight.w300),)
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrangeAccent
                        ),
                         child: Text("VIEW DEAL")),
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
    );
  }
}