import 'package:flutter/material.dart';

class Solwer extends StatefulWidget {
  @override
  _SolwerState createState() => _SolwerState();
}

class _SolwerState extends State<Solwer> {
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
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
      floatingActionButton: show ? FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ):(showpage ? Container(
        width: double.infinity,
        height: 300,
        color: Colors.red,
      ) : null ), 
    );
  }
}