import 'package:hanzjknc/Https/Global.dart';
import 'package:hanzjknc/Https/error_status.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;


import 'SharedPre.dart';
///接口连接池
class DioManager{

  static DioManager _dioManager;
  
  static DioManager getInstance(){
    if(_dioManager==null){
      _dioManager=DioManager();
    }
    return _dioManager;
  }

  Dio dio=new Dio(BaseOptions(
    baseUrl: "https://xcx.liutong.pro/v1_2/",
    connectTimeout: 10000,
    receiveTimeout: 10000,
    headers: {"resource":"Flutter_Attsaas"}));
    DioManager(){
      dio.interceptors.add(InterceptorsWrapper(

        onRequest:(RequestOptions options) async{
          print('请求之前');
          return options;
        },

        onResponse:(Response response) async {
          print("响应结束");
          return response;
        },

        onError: (DioError e) async {
          print("错误之前");
          NetError error = ExceptionHandle.handleException(e);
          // Fluttertoast.showToast(msg: error.msg);
          return  e;
        }
    ));
  }

  Dio dios=new Dio(BaseOptions(
    baseUrl: "https://xcx.liutong.pro/v1_2/",
    connectTimeout: 10000,
    receiveTimeout: 10000,
    headers: {"resource":"Flutter_Attsaas"}));
  ///取消请求
  // cancleRequests(CancelToken token){
  //   token.cancel("cancelled");
  // }
  
  ///get请求
  static get (String path,Map<String,dynamic> _map)async{
    Map<String, dynamic> map = {'token': Global.token};
    map.addAll(_map);
    Response response;
    try {
      response = await getInstance().dio.get(path,queryParameters: map);
      if(response.statusCode == 200){
          Map<String,dynamic> data = convert.jsonDecode(response.data);
        if(data["code"]=="10001"){
            // Fluttertoast.showToast(msg: data["msg"]);
            // SharePre().setProToken("");
            // Global.token=await SharePre().getpro("token");
            // Router.navigatorKey.currentState.pushNamedAndRemoveUntil("/login",
            //         ModalRoute.withName("/login"));
        }
        return data;
      }
    } on DioError catch (e)  {
        print('get error---------${e.type}');
      return response;
    }
  }


    static gets (String path,Map<String,dynamic> _map)async{
    Map<String, dynamic> map = {'token': Global.token};
    map.addAll(_map);
    Response response;
    try {
      response = await getInstance().dios.get(path,queryParameters: map);
      if(response.statusCode == 200){
          Map<String,dynamic> data = convert.jsonDecode(response.data);
        return data;
      }
    } on DioError catch (e)  {
        print('get error---------${e.type}');
      return response;
    }
  }

  ///post请求
  static  post (String path,Map<String,dynamic> _map)async{
    Map<String, dynamic> map = {'token': Global.token};
    map.addAll(_map);
    Response response;
    try {
      response=await getInstance().dio.post(path,queryParameters: map);
      if(response.statusCode==200){
        Map<String,dynamic> data = convert.jsonDecode(response.data);
        if(data["code"]=="10001"){
            // Fluttertoast.showToast(msg: data["msg"]);
            // Router.navigatorKey.currentState.pushNamedAndRemoveUntil("/login",
                    // ModalRoute.withName("/login"));
        }
        return data;
      }
    } on DioError catch (e)  {
        print('post error---------${e.type}');
      return response;
    }
  }
}
