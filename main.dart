import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

enum Gender {male, female}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xBB192A5c),
      appBar: AppBar(
        backgroundColor: Color(0xFF192A5c),
        title: Text('Индекс массы тела', style: TextStyle(fontSize: 22),),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Icon(FontAwesomeIcons.venus, size: 100,),
                      Text('Female', style: TextStyle(fontSize: 22),)
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.deepOrange[300],
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                ),
              ),
             Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Icon(FontAwesomeIcons.mars, size: 100,),
                      Text('Male', style: TextStyle(fontSize: 22),)
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.deepOrange[300],
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                ),
              ), 
            ]
          ),
        ],
      ),
    );
  }
}