import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hanzjknc/Https/Api.dart';

class TestOmage extends StatefulWidget {
  @override
  _TestOmageState createState() => _TestOmageState();
}

class _TestOmageState extends State<TestOmage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  void getData() async {
    var result = await Api.loginadmin();
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context,index)=>Container(
            child: CachedNetworkImage(imageUrl: "https://bidderpic.artcare.com/rotaryMap/18015.jpg",
            placeholder: (context, url) => Icon(Icons.error_outline,size:30,color: Colors.red,),//正在加载图片占位图
            errorWidget: (context, url, error) =>Icon(Icons.error_outline,size:30,color: Colors.blue,),
          ),
        ),
        )
    );
  }
}