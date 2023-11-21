import 'package:eshoppieamal/loginregister/loginpage.dart';
import 'package:eshoppieamal/registrationpag.dart';
import 'package:flutter/material.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({super.key});

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: ListView(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("Hello !",
                    style: TextStyle(fontSize: 27,
                    fontWeight: FontWeight.bold,color: Colors.white),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("Welcome to e-Shoppy",
                    style: TextStyle(fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),),
                  ),
               SizedBox(height: 28,),
                  
                  Image.asset("assets/images/logo.png")
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Align(alignment: AlignmentDirectional.bottomCenter,
                  child: Container(height: 230,width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(100)),
                    color: Colors.amber,
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Color.fromARGB(255, 238, 222, 208),Colors.deepOrangeAccent])
                  ),
                    child: Column(
                      children: [
                        SizedBox(height: 70,),
                        InkWell(onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Loginscreen(),));
                        },
                          child: Container(height: 40,width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.white
                            ),
                            child: Center(child: Text("Login",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                          ),
                        ),
                        SizedBox(height: 20,),
                        InkWell(onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Registerscreen(),));
                        },
                          child: Container(height: 40,width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.white
                            ),
                            child: Center(child: Text("Register",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )


 


              //  Padding(
              //    padding: const EdgeInsets.only(top: 100),
              //    child: Align(alignment: AlignmentDirectional.bottomCenter,
              //      child: Column(
              //        children: [
              //          InkWell(onTap: (){
              //           Navigator.push(context, MaterialPageRoute(builder: (context) => Loginscreen(),));
              //          },
              //            child: Container(height: 40,width: 150,
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.all(Radius.circular(15)),
              //               color: Colors.white
              //             ),
              //             child: Center(child: Text("Login",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
              //            ),
              //          ),
              //         SizedBox(height: 10,),
              //          InkWell(onTap: () {
              //           Navigator.push(context, MaterialPageRoute(builder: (context) => Registerscreen(),));
              //          },
              //            child: Container(height: 40,width: 150,
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.all(Radius.circular(15)),
              //               color: Colors.white,
              //             ),
              //             child: Center(child: Text("Register",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
              //            ),
              //          ),
              //        ],
              //      ),
              //    ),
              //  )
            ],
          ),
        ],
      ),
      
    );
  }
}