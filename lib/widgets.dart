import 'dart:ui';
import 'package:flutter/material.dart';

import 'about.dart';
import 'main.dart';

import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://flutter.dev');

class DtEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading: Icon(
          Icons.alternate_email,
          color: Colors.teal,
        ),
        title: Text(
          '${email}',
          style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 20.0,
              //color: Colors.teal.shade900,
              fontVariations: [
                FontVariation('wght', 400),
              ]),
        ),
      ),
    );
  }
}

class DtPhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
          leading: Icon(Icons.phone, color: Colors.teal),
          title: Text(
            '${phone}',
            style: TextStyle(
                //color: Colors.teal.shade900,
                fontFamily: 'Inter',
                fontSize: 20.0,
                fontVariations: [FontVariation('wght', 400)]),
          )),
    );
  }
}

class DtAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 80.0,
      backgroundImage: AssetImage('images/snake.jpg'),
    );
  }
}

class DtName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      '${name}',
      style: TextStyle(
        fontFamily: 'Pacifico',
        fontSize: 50.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class DtJob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      '${job}',
      style: TextStyle(
        fontFamily: 'Source Sans Pro',
        color: Colors.teal.shade100,
        fontSize: 20.0,
        letterSpacing: 2.5,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class MyNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.purple,
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Inter',
                fontVariations: [
                  FontVariation('wght', 600),
                ],
              ),
            ),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyApp())),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: Text(
              'About Me',
              style: TextStyle(color: Colors.white, fontVariations: [
                FontVariation('wght', 600),
              ]),
            ),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => SecondPage())),
          ),
        ],
      ),
    );
  }
}

class OpenDrawerButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => IconButton(
          onPressed: () => Scaffold.of(context).openDrawer(),
          icon: Icon(
            Icons.menu,
          )),
    );
  }
}

class MadeWithFlutter extends StatelessWidget {
  const MadeWithFlutter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
