import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Icon(Icons.home_outlined, size: 38),
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.face, size: 150, color: Colors.lightGreen),
              Text('Profile', style: TextStyle(fontWeight: FontWeight.w400, color: Colors.lightGreen, fontSize: 26))
            ],
          ),
        ),
        drawer: AppDrawer()// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}