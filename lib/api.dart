import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meatshopproj/main.dart';
import 'package:meatshopproj/modals/homemodal.dart';
import 'package:meatshopproj/modals/loginmodal.dart';
import 'package:meatshopproj/modals/productmodal.dart';
import 'package:meatshopproj/modals/recipesmodal.dart';
import 'package:meatshopproj/modals/registermodal.dart';
import 'package:meatshopproj/modals/singlerecipesmodal.dart';
import 'package:meatshopproj/url/url.dart';

import 'modals/singleproductmodal.dart';

class Api{
  
  Api._internal();
  static Api instance = Api._internal();
  factory(){
    return instance;
  }


final dio = Dio();
final url = URL();

Api(){
  dio.options =BaseOptions(
    baseUrl: url.baseUrl,
    responseType: ResponseType.json
  );
}

Future <Regimodal?> registerUserApi (FormData formData) async{
  try{
   final result = await dio.post(url.regiEnd,data: formData);
   return Regimodal.fromJson((result.data));
  }
  on DioException catch(e){
    print(e);
  }
  catch(e){
    print(e);
  }
}

Future <Loginmodal?> loginUserApi (FormData formData) async{
  try{
    final result = await dio.post(url.loginEnd,data: formData);
    return Loginmodal.fromJson(result.data);
  }
  on DioException catch(e){
    print(e);
  }
  catch(e){
    print(e);
  }
}

Future <Homemodal?> homeUserApi (FormData formData) async{
  try {
    final result = await dio.post(url.homeEnd,data: formData);
    return Homemodal.fromJson(result.data);
  }
  on DioException catch(e){
    print(e);
  }
}

Future <Productmodal?> productUserApi (FormData formData) async{
  try{
    final result = await dio.post(url.productEnd,data: formData);
    return Productmodal.fromJson(result.data);
  }
  on DioException catch(e){
    print(e);
  }

}

Future <Singleproductmodal?> singleproductUserApi (FormData formdata) async{
  try{
    final result = await dio.post(url.singleproEnd,data: formdata);
    return Singleproductmodal.fromJson(result.data);
  }
  on DioException catch(e){
    print(e);
  }
}

Future <Recipesmodal?> recipesUserApi (FormData formdata) async{
  try{
    final result = await dio.post(url.recipEnd,data: formdata);
    return Recipesmodal.fromJson(result.data);
  }
  on DioException catch(e){
    print(e);
  }
}

Future <Singlerecimodal?> singlereciUserApi (FormData formdata) async{
  try{
    final result = await dio.post(url.singlerecipEnd,data: formdata);
    return Singlerecimodal.fromJson(result.data);
  }
  on DioException catch(e){
    print(e);
  }
}



}