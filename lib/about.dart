import 'dart:ui';
import 'package:flutter/material.dart';

import 'widgets.dart';
import 'main.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, brightness: Brightness.light),
      darkTheme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade400,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple.shade800,
        leading: OpenDrawerButton(),
        title: Text(
          'About Me',
          style: TextStyle(
            fontFamily: 'Inter',
            color: Colors.purple.shade50,
            fontVariations: [
              FontVariation('wght', 600),
            ],
          ),
        ),
        actions: [
          IconButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp())),
              icon: Icon(
                Icons.home,
                color: Colors.white,
              )),
        ],
      ),
      drawer: MyNavbar(),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 80.0),
            DtAvatar(),
            DtName(),
            DtJob(),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            DtPhone(),
            DtEmail(),
            MadeWithFlutter(),
            //SizedBox(
            //height: 500.0,
            //),
            //Card(
            //margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            //child: ListTile(title: Text('My name is hello')),
            //)
          ],
        ),
      ),
    );
  }
}
