import 'package:bayrak_bulmaca/screens/questionPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bayrak Bulmaca"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        leading: Container(),
      ),
      body: Container(
        color: Colors.deepOrange,
        child: Center(
          
          child: FlatButton(onPressed: (){Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return QuestionPage();
                    }));}, child: Text("OYNA",style: TextStyle(color: Colors.white),)),
        ),
      ),
    );
  }
}