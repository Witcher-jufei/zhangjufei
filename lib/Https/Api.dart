import 'package:hanzjknc/Https/DioManager.dart';
///接口 未完成 封装请求接口 到 DioManager().init() https://blog.csdn.net/jiujiaopanduola/article/details/105573123 
class Api{
  ///登陆接口
    static Future<Map<String, dynamic>> loginadmin() async {
    var path = '/rotaryMap';
    var _map = {};
    return await DioManager.post(path, _map);
  }
  ///artist搜索列表
  static   mobartistlist(var search) async {
    var path = '/mob_artist_list';
    var _map = {'search': search,};
    return await DioManager.get(path, _map);
  }
  ///obj搜索列表
  static  Future<Map<String, dynamic>> mobartworkslist(var search) async {
    var path = '/mob_artworks_list';
    var _map = {'search': search,};
    return await DioManager.get(path, _map);
  }
  ///show搜索列表
   static   Future<Map<String, dynamic>> mobshowlist(
      var search) async {
    var path = '/mob_show_list';
    var _map = {'search': search,};
    return await DioManager.get(path, _map);
  }
  ///list搜索列表 
   static   Future<Map<String, dynamic>> moblistlist(var search) async {
    var path = '/mob_list_list';
    var _map = {'search': search};
    return await DioManager.get(path, _map);
  }
  ///主页tabbar
   static   Future<Map<String, dynamic>> getappfield() async {
    var path = '/get_app_field';
    return await DioManager.get(path,{});
  }
    ///主页tabbar设置
    static  Future<Map<String, dynamic>> setappfield(var appfield) async {
    var path = '/set_app_field';
    var _map = {'app_field': appfield};
    return await DioManager.post(path,_map);
  }
  ///主页内容
    static  Future<Map<String, dynamic>> getsortlsit(var type) async {
    var path = '/get_sort_lsit';
    var _map = {'type': type};
    return await DioManager.gets(path,_map);
  }
  ///艺术家详情页
  static Future<Map<String, dynamic>> getartworkdetail(String id) async {
    var path = '/get_artwork_detail';
    var _map = {'id': id};
    return await DioManager.get(path,_map);
  }
  ///首页artlist点击
  static Future<Map<String, dynamic>> getsortartist(String type)async{
    var path='/get_sort_artist';
    var _map={'type':type};
    return await DioManager.get(path, _map);
  }
  ///首页show点击
  static Future<Map<String, dynamic>> getshowobj(String id)async{
    var path="/get_show_obj";
    var _map={"id":id};
    return await DioManager.get(path, _map);
  }
  ///首页list点击
  static Future<Map<String, dynamic>> getlistobj(String id)async{
  var path="/get_list_obj";
    var _map={"id":id};
    return await DioManager.get(path, _map);
  }
  ///登出
  static Future<Map<String, dynamic>> logout()async{
  var path="/logout";
    var _map={"type":"mobile"};
    return await DioManager.post(path, _map);
  }
  ///分享PDF
  static Future<Map<String, dynamic>> artworkssharepdf(dynamic id,) async {
    var path = "/artworks_share_pdf";
    var _map={"id":id};
    return await DioManager.get(path, _map);
  }




}