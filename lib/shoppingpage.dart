

import 'package:dio/dio.dart';
import 'package:eshoppieamal/api/api.dart';
import 'package:eshoppieamal/itemsdetails.dart';
import 'package:flutter/material.dart';

import 'model/shopsmodel.dart';

class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  ValueNotifier<List<Shopsavailble>> shoplist=ValueNotifier([]);
  bool clr = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      shopsproduct();
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Electronics")),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: ListView(
        children: [
          Material(
            elevation: 15,
            child: Container(
              height: 50,width: double.infinity,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.swap_vert),
                    Text("Sort",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 70),
                    child: Container(
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              
                            },
                            child: Icon(Icons.filter_alt)),
                          Text("Filter",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
              
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
                       SizedBox(height: 18,),
                Container(
                  decoration: BoxDecoration(
                  //  color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  height: 420,width: double.infinity,
                  child: ValueListenableBuilder(valueListenable: shoplist,
                   builder: (context, newshops, child) {
                    return GridView.builder(gridDelegate: 
                  const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 20,
                  
                mainAxisExtent: 280,
                  // childAspectRatio: (1 /.8),
                  ),
                  itemCount: newshops.length,
                  physics: NeverScrollableScrollPhysics(),
                   itemBuilder: (context, index) {
                    final shpsav=shoplist.value[index];
                     return Material(elevation: 10,
                     borderRadius: BorderRadius.all(Radius.circular(15)),
                       child: InkWell(onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => Detailspage(
                            item1: shpsav.id,
                           ),));
                       },
                         child: Container(
                                    
                          decoration: BoxDecoration(
                            
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          
                            
                          ),
                          child: Column(
                            children: [
                              Container(
                                
                                height: 152,
                                decoration: BoxDecoration(
                                  
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                                  image: DecorationImage(image: NetworkImage(shpsav.image.toString()),fit: BoxFit.fill)
                                ),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,top: 50),
                                      child: Container(
                                        height: 30,width: 60,
                                        color: Colors.deepOrangeAccent,
                                        child: Center(child: Text("DEALS",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 50,right: 10),
                                      child: Container(
                                        height: 30,width: 70,color: Colors.deepOrangeAccent,
                                        child: Center(child: Text("Upto 15% off",style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.bold),))),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 128,
                                child: Column(
                                  children: [
                                    Align(alignment: AlignmentDirectional.topStart,
                                      child: Text(shpsav.shopname.toString(),style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                                        overflow: TextOverflow.ellipsis,maxLines: 3,softWrap: true,),
                                    ),
                                    
                         
                         
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                       
                                        Row(
                                          children: [
                                           Text("Distance"),
                                        Text("-"),
                                         Text(shpsav.distance.toString(),style: TextStyle(fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                         Row(
                                          children: [
                                            Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                            Text(shpsav.rating.toString())
                                          ],
                                        ),
                                     
                                      ],
                                    ),
                                    
                                    Text(shpsav.address.toString(),style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),maxLines: 5,softWrap: true,),
                       
                                 
                       
                                    // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    //   children: [
                                    //     Row(
                                    //       children: [
                                    //         Text("Cost : ",style: TextStyle(fontWeight: FontWeight.bold),),
                                    //         Text("8000",style: TextStyle(fontSize: 12))
                                    //       ],
                                    //     ),
                                    //     Text("121,118 bought",style: TextStyle(fontWeight: FontWeight.bold),)
                                    //   ],
                                    // ),
                                    // Row(
                                    //   children: [
                                    //     Text("Add to favorites",style: TextStyle(fontWeight: FontWeight.bold)),
                                    //     SizedBox(width: 10,),
                                    //     InkWell(
                                    //       onTap: () {
                                    //         setState(() {
                                    //           clr=!clr;
                                    //         });
                                    //       },
                                    //       child: Icon(Icons.favorite,
                                    //       color: clr? Colors.black:Colors.red),
                                    //     )
                                       
                                       
                                    //   ],
                                    // )
                                  ],
                                )
                                
                              )
                            ],
                          ),
                         ),
                       ),
                     );
                   },);
                  },)
                )  ,
                SizedBox(height: 15,),
                Container(
                  height: 120,width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(image: AssetImage("assets/images/giftcard.png"),fit: BoxFit.fill)
                  ),
                )     ,
                SizedBox(height: 15,)
        ],
      ),
    );
  }
 void shopsproduct()async{
  final formdata= FormData.fromMap({
  "product_id":1
  });
  final  shops=await Apiclass().avialbleshops(formdata);
  print("//////////////${shops}");
  setState(() {
     if(shops !=null){
   shoplist.value.clear();
   shoplist.value.addAll(shops);
  }


  });
 
 }
}