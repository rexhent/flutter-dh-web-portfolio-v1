import 'dart:ui';
import 'package:flutter/material.dart';

import 'widgets.dart';
import 'main.dart';

import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://flutter.dev');

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
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
              icon: Icon(Icons.psychology_alt)),
        ],
      ),
      drawer: MyNavbar(),
      body: SingleChildScrollView(
        child: SafeArea(
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: _launchUrl,
                    child: Container(
                      width: 218,
                      child: ListTile(
                        leading: Icon(Icons.android),
                        title: Text('Made with Flutter!'),
                      ),
                    )),
              )
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
      ),
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
