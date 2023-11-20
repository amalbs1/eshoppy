import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:eshoppieamal/model/loginmodel.dart';
import 'package:eshoppieamal/model/productmodel.dart';
import 'package:eshoppieamal/model/profilemodel.dart';
import 'package:eshoppieamal/model/registermodel.dart';
import 'package:eshoppieamal/model/shopsmodel.dart';
import 'package:eshoppieamal/url/url.dart';
import 'package:flutter/material.dart';

import '../model/shopviewmodel.dart';

class Apiclass {
  ValueNotifier<List<Product>> productlist = ValueNotifier([]);
  late List<Shopview> shopsview = [];
  static Apiclass instance = Apiclass();
  factory() {
    return instance;
  }

  final dio = Dio();
  final url = URL();

  Apiclass() {
    dio.options =
        BaseOptions(baseUrl: url.baseUrl, responseType: ResponseType.json);
  }
  // ignore: body_might_complete_normally_nullable
  Future<Register?> registerUserApi(FormData formData) async {
    try {
      final result = await dio.post(url.registerEnd, data: formData);
      return Register.fromJson(jsonDecode(result.data));
    } on DioException catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }
  }

  // ignore: body_might_complete_normally_nullable
  Future<Login?> loginUserapi(FormData formData) async {
    try {
      final result = await dio.post(url.loginEnd, data: formData);
      return Login.fromJson(jsonDecode(result.data));
    } on DioException catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }
  }

  Future<void> fetchhome() async {
    try {
      Response response = await dio.get(url.baseUrl + url.home);

      late List<dynamic> product = jsonDecode(response.data);
      List<Product> homedatalist =
          product.map((e) => Product.fromJson(e)).toList();
      print(product);
      if (response.statusCode == 200) {
        productlist.value.clear();
        productlist.value.addAll(homedatalist);
      }
    } catch (error) {
      print(error.toString());
    }
  }

// ignore: body_might_complete_normally_nullable
  avialbleshops(FormData formData) async {
    try {
      final shops = await dio.post(url.shopsavilble, data: formData);
      late List<dynamic> avashops = jsonDecode(shops.data);
      // List<Product> homedatalist = product.map((e) => Product.fromJson(e)).toList();
      return avashops.map((e) => Shopsavailble.fromJson(e)).toList();
    } on DioException catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }
  }

  fetchshopview(String? item1) async {
    try {
      Response response = await Dio().get(url.baseUrl + "shops/$item1");

      final List<dynamic> viewshopdetail = jsonDecode(response.data);
      print("---------->${response.data}");
      if (response.statusCode == 200) {
        return (viewshopdetail).map((e) => Shopview.fromJson(e)).toList();
      }
    } catch (error) {
      print(error.toString());
    }
  }
 profilUser(FormData formData)async{
  try{
 final result=await dio.post(url.baseUrl+url.prof,data: formData);

final List<dynamic> viewproflist=jsonDecode(result.data);
      
      print('********345$viewproflist');
    
    
    return viewproflist.map((json) =>
       Userprofile.fromJson(json)).toList();


   
  
  }on DioException catch(e){
    print(e);
  }
 }
}
