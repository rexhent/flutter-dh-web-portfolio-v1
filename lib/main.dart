import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/services.dart';

import 'widgets.dart';
import 'about.dart';

class Person {
  String name;
  String job;
  String email;
  String phone;
  Person(String aName, String aJob, String aEmail, String aPhone) {
    this.name = aName;
    this.job = aJob;
    this.email = aEmail;
    this.phone = aPhone;
  }
}

Future setMinSize() async =>
    await DesktopWindow.setMinWindowSize(Size(500, 800));
Future setMaxSize() async =>
    await DesktopWindow.setMaxWindowSize(Size(500, 800));

void main() {
  runApp(MyApp());
  DesktopWindow.setWindowSize(Size(400, 700));
  setMaxSize();
  setMinSize();
}

Person dominic = Person('Dominic Hannah', 'Android Developer',
    'dhannah10@outlook.com', '+61 0477 534 900');

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: MyNavbar(),
        appBar: AppBar(
          centerTitle: true,
          leading: DrawerButton(),
          title: Text(
            'Home',
            style: TextStyle(
                fontFamily: 'Inter',
                fontVariations: [FontVariation('wght', 600)]),
          ),
          actions: <Widget>[
            IconButton(onPressed: SystemNavigator.pop, icon: Icon(Icons.close)),
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
                    child: Text(
                      'Go to About page',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 16,
                          fontVariations: [FontVariation('wght', 500)]),
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
