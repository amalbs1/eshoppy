import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:eshoppieamal/loginmodel.dart';
import 'package:eshoppieamal/productmodel.dart';
import 'package:eshoppieamal/registermodel.dart';
import 'package:eshoppieamal/url.dart';
import 'package:flutter/material.dart';

class Apiclass{
  ValueNotifier<List<Product>> productlist= ValueNotifier([]);
  static Apiclass instance= Apiclass();
  factory(){
    return instance;
  }

  final dio = Dio();
  final url= URL();

  Apiclass(){
    dio.options =BaseOptions(
      baseUrl: url.baseUrl,
      responseType: ResponseType.json
    );
  }
  // ignore: body_might_complete_normally_nullable
  Future<Register?> registerUserApi(FormData formData)async{
    try{
      final result= await dio.post(url.registerEnd,data: formData);
      return Register.fromJson(jsonDecode(result.data));
    }on DioException catch(e){
      print(e);
    }catch(e){
      print(e);
    }
  }

  // ignore: body_might_complete_normally_nullable
  Future<Login?> loginUserapi(FormData formData)async{
    try{
      final result= await dio.post(url.loginEnd,data: formData);
      return Login.fromJson(jsonDecode(result.data));
    }on DioException catch(e){
      print(e);
    }catch(e){
      print(e);
    }
  }
   Future<void>fetchhome()async{
    try{
      Response response = await dio.get(url.baseUrl+url.home);
     
      late List<dynamic> product =  jsonDecode(response.data);
      List<Product> homedatalist = product.map((e) => Product.fromJson(e)).toList();
        print(product);
      if(response.statusCode==200){
       
       productlist.value.clear();
       productlist.value.addAll(homedatalist);
        
     
      }
    }catch(error){
      print(error.toString());
    }
  }
}