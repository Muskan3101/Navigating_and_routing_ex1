import 'package:flutter/material.dart';
import 'package:navigating_and_routing_ex1/thirdPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigating & Routing Ex 1"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
          },
          child: Text("Move to Second Page"),
        ),
      )
    );
  }
}

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Move to First Page"),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ThirdPage()));
              },
              child: Text("Move to Third Page"),
            ),
          ),
        ],
      )
    );
  }
}

