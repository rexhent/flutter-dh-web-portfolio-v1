import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widgets.dart';
import 'about.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:flutter/material.dart';

// ...

String name = 'Dominic Hannah';
String job = 'Android Developer';
String email = 'dhannah10@outlook.com';
String phone = '+61 0477 534 900';

void main() {
  name = 'd';
  email = 'd';
  phone = 'd';

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, brightness: Brightness.light),
      darkTheme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: MyNavbar(),
        appBar: AppBar(
          backgroundColor: Colors.purple.shade300,
          centerTitle: true,
          leading: OpenDrawerButton(),
          title: Text(
            'Home',
            style: TextStyle(
                fontFamily: 'Inter',
                fontVariations: [FontVariation('wght', 600)]),
          ),
          actions: <Widget>[
            IconButton(
                onPressed: SystemNavigator.pop,
                icon: Icon(
                  Icons.close,
                )),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to my app!',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 20,
                fontVariations: [FontVariation('wght', 500)],
              ),
            ),
            Center(
              child: Builder(builder: (context) {
                return ElevatedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: 160,
                      child: Row(
                        children: [
                          Text(
                            'Go to About page',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 16,
                                fontVariations: [FontVariation('wght', 500)]),
                          ),
                          Icon(Icons.arrow_right_alt),
                        ],
                      ),
                    ),
                  ),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage())),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
