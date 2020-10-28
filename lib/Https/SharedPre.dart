// import 'package:hanzjknc/Https/Global.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class SharePre{
//    SharedPreferences _preferences;
//    ///设置缓存
//    Future setpro(String key,String value)async{
//     _preferences=await SharedPreferences.getInstance();
//     _preferences.setString(key, value);
//   }
//   //得到缓存
//   Future getpro(String key)async{
//     _preferences=await SharedPreferences.getInstance();
//     String i=_preferences.getString(key);
//     return i;
//   }
//   //清除缓存
//   Future clearpro(String value)async{
//    _preferences=await SharedPreferences.getInstance();
//    _preferences.setString(value, null);
//   }
//   //清除token
//    Future clearproToken(String value)async{
//    _preferences=await SharedPreferences.getInstance();
//    _preferences.setString(value, null);
//   Global.token=_preferences.getString("token");
//   }
//   //设置token
//   Future setProToken(String value)async{
//     _preferences=await SharedPreferences.getInstance();
//     _preferences.setString("token", value);
//     Global.token= _preferences.getString("token").toString();
//   }
// }