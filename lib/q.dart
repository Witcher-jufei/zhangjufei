import 'package:flutter/material.dart';

class Solw extends StatefulWidget {
  @override
  _SolwState createState() => _SolwState();
}

class _SolwState extends State<Solw> {
  bool show = true;
  bool showpage = false ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("asd"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.blue,
              child: Text("跳转"),
              onPressed:show ? () async{
                setState(() {
                    show = !show;
                });
                 await Future.delayed(Duration(milliseconds: 200), () {
                    setState(() {
                      showpage = !showpage;
                    });
                  });
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>Solw()));
            }:() async{
              setState(() {
                    showpage = !showpage;
                });
                 await Future.delayed(Duration(milliseconds: 200), () {
                    setState(() {
                      show = !show;
                    });
                  });
            }),
            Row(
              children: [
                Column(children: [
                  Container(
            child:Text(''
              // '撒打算打算大撒打算打算撒打算打算打算尽快和手机卡还得赶回家阿萨德v吵架啊说哈手到病除时间阿斯顿好景不长说不是黄金时代次v啊接受调查缉私警察是你很上档次局势 this many times:',
            ),),
                ],)
              ],
            ),
            Text(
              '撒打算打算大撒打算打算撒打算打算打算尽快和手机卡还得赶回家阿萨德v吵架啊说哈手到病除时间阿斯顿好景不长说不是黄金时代次v啊接受调查缉私警察是你很上档次局势 this many times:',
            )
            
          ],
        ),
      ),
      floatingActionButton: show ? Container(
        height: 50,
        width: 50,
        color: Colors.blue,
      ):(showpage ? Container(
        width: double.infinity,
        height: 300,
        color: Colors.red,
      ) : null ), 
    );
  }
}