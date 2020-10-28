import 'dart:io';

import 'package:dio/dio.dart';


class ExceptionHandle {
  static NetError handleException(dynamic error) {
    String msg;
    switch (error.type) {
      case DioErrorType.CONNECT_TIMEOUT:
        msg = "连接超时";
        break;
      case DioErrorType.SEND_TIMEOUT:
        msg = "请求超时";
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        msg = "响应超时";
        break;
      case DioErrorType.RESPONSE:
        msg = "服务器异常";
        break;
      case DioErrorType.CANCEL:
        msg = "请求取消";
        break;
      case DioErrorType.RESPONSE:
        msg = otherError(error);
        break;
      default:
        msg = otherError(error);
        break;
        
    }
     return NetError(msg);
  }
  
}


otherError(dynamic error){
    String msg;
    dynamic e = error.error;
    switch (e) {
      case SocketException:
         msg = "网络异常，请检查网络";
        break;
      case HttpException:
         msg = "服务器异常";
        break;
      default:
         msg = "网络异常";
        break;
    }
    return msg;
}

class NetError {
  String msg;

  NetError( this.msg);
}
