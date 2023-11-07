import 'package:eshoppieamal/btmnav.dart';
import 'package:eshoppieamal/registrationpag.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      backgroundColor: Colors.deepOrangeAccent,
      body: ListView(
        children: [
            SizedBox(height: 25,),
            Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Welcome to e-Shoppy!",
                    style: TextStyle(fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Your top stop destination",style: TextStyle(fontSize: 15,
                    color: Colors.white
                    ),),
                  ),
        
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25,top: 40),
            child: Container(
              height: 400,width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Colors.white
              ),
              child: ListView(
                children: [
                SizedBox(height: 30,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: OutlinedButton(onPressed: (){},
                         style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: Colors.deepOrangeAccent
                          )
                        ),
                         child: Row(
                          children: [
                            Icon(Icons.facebook),
                            SizedBox(width: 5,),
                            Text("FACEBOOK",style: TextStyle(color: Colors.deepOrangeAccent),)
                          ],
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: OutlinedButton(onPressed: (){}, 
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: Colors.deepOrangeAccent
                          )
                        ),
                        child: Row(
                          children: [
                            Image.asset("assets/images/google.png"),
                            SizedBox(width: 8,),
                            Text("GOOGLE",style: TextStyle(color: Colors.deepOrangeAccent),)
                          ],
                        )),
                      )
                    ],
                  ),
                  SizedBox(height: 7,),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 3,
                        ),
                      ),
                      Text("or login via email"),
                      Expanded(child: Divider(
                        thickness: 3,
                      ))
                    ],
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email,color: Colors.deepOrangeAccent,),
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25))
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          borderSide: BorderSide(color: Colors.deepOrangeAccent)
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password,color: Colors.deepOrangeAccent,),
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25))
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          borderSide: BorderSide(color: Colors.deepOrangeAccent)
                        )
                      ),
                    ),
                  ),SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: InkWell(
                        onTap:(){} ,
                        child: Text("Forget password?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500)))),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 110,right: 110),
                    child: InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NavigatnPage(),));
                    },
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(15)),
                           color: Colors.deepOrangeAccent
                        ),
                        child: Center(
                          child: Text("SIGN IN",style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Don't have an account",style: TextStyle(fontSize: 14),),
                      ),
                      SizedBox(width: 10,),
                      OutlinedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Registerscreen(),));
                      }, 
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: Colors.deepOrangeAccent
                        )
                      ),
                      child: Text("SIGN UP",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}