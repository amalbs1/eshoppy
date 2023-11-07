import 'package:flutter/material.dart';

class Favoritespage extends StatefulWidget {
  const Favoritespage({super.key});

  @override
  State<Favoritespage> createState() => _FavoritespageState();
}

class _FavoritespageState extends State<Favoritespage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Favorites")),
        backgroundColor: Colors.deepOrangeAccent,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
        ],
      ),
      drawer: Drawer(),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
        return Column(
          children: [
           SizedBox(height: 15,),
           Material(elevation: 10,
           borderRadius: BorderRadius.all(Radius.circular(10)),
             child: Container(
              height: 150,width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 55,width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(image: AssetImage("assets/images/amal1.6.jpeg"))
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 75),
                          child: Column(
                            children: [
                              Text("Grinder"),
                              Row(
                                          children: [
                                            Text("3 km -",style: TextStyle(fontWeight: FontWeight.bold),),
                                            Text("UB City,Bengaluru",style: TextStyle(fontSize: 12)),
                                            
                                          ],
                                        ),
                                         Row(
                                              children: [
                                                Text("Cost : ",style: TextStyle(fontWeight: FontWeight.bold),),
                                                Text("8000",style: TextStyle(fontSize: 12))
                                              ],
                                            ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                                            height: 30,width: 60,
                                            color: Colors.deepOrangeAccent,
                                            child: Center(child: Text("DEALS",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),)),
                                          ),
                      ),
                      SizedBox(width: 10,),
                      Text("Upto 15% off on Open Voucher")
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("121118 bought",style: TextStyle(fontWeight: FontWeight.w300),),
                      ),
                      Row(
                        children: [
                          Text("Added to favorites",style: TextStyle(fontWeight: FontWeight.w300),),
                          Icon(Icons.favorite,color: Colors.red,)
                        ],
                      )
                    ],
                  )
                ],
              ),
             ),
           )
          ],
        );
      },),
    );
  }
}