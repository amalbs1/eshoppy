import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:eshoppieamal/loginmodel.dart';
import 'package:eshoppieamal/registermodel.dart';
import 'package:eshoppieamal/url.dart';

class Apiclass{
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
}