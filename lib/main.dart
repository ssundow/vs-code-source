import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toast Message test',
      theme: ThemeData(
          primarySwatch: Colors.blue,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toast Message'),
        centerTitle: true,
      ),      
      body: Center(
        child: FlatButton(
          onPressed: (){
            fluttertoast();
          },
          child: Text('Toast'),
          color: Colors.blue,
        ),

      ),
    );
  }
}

void fluttertoast(){
  Fluttertoast.showToast(msg: 'Flutter is easy. therefore i can fly in the sky.',
  gravity: ToastGravity.BOTTOM_RIGHT,
  backgroundColor: Colors.redAccent,
  fontSize: 20.0,
  textColor: Colors.white,
  toastLength: Toast.LENGTH_SHORT
  );
}