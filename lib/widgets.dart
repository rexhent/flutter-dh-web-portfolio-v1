import 'dart:ui';
import 'package:flutter/material.dart';

import 'about.dart';
import 'main.dart';

class DtEmail extends StatelessWidget {
  const DtEmail({
    Key key,
  }) : super(key: key);
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
          '${dominic.email}',
          style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 20.0,
              color: Colors.teal.shade900,
              fontVariations: [
                FontVariation('wght', 400),
              ]),
        ),
      ),
    );
  }
}

class DtPhone extends StatelessWidget {
  const DtPhone({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
          leading: Icon(Icons.phone, color: Colors.teal),
          title: Text(
            '${dominic.phone}',
            style: TextStyle(
                color: Colors.teal.shade900,
                fontFamily: 'Inter',
                fontSize: 20.0,
                fontVariations: [FontVariation('wght', 400)]),
          )),
    );
  }
}

class DtAvatar extends StatelessWidget {
  const DtAvatar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 80.0,
      backgroundImage: AssetImage('images/snake.jpg'),
    );
  }
}

class DtName extends StatelessWidget {
  const DtName({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${dominic.name}',
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
  const DtJob({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${dominic.job}',
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
  const MyNavbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.purple,
      child: ListView(
        children: <Widget>[
          ListTile(
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

class DrawerButton extends StatelessWidget {
  const DrawerButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: Icon(Icons.menu));
      },
    );
  }
}
