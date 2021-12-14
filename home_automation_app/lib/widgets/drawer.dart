import 'package:flutter/material.dart';
import '../routes/routes.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(
            icon: Icons.home,
            text: 'Home',
            onTap: () => Navigator.pushReplacementNamed(context, Routes.home),
          ),
          _createDrawerItem(
            icon: Icons.king_bed,
            text: 'Confort',
            onTap: () => Navigator.pushReplacementNamed(context, Routes.confort),
          ),
          _createDrawerItem(
            icon: Icons.lightbulb,
            text: 'Energy',
            onTap: () => Navigator.pushReplacementNamed(context, Routes.energy),
          ),
          _createDrawerItem(
            icon: Icons.security,
            text: 'Security',
            onTap: () => Navigator.pushReplacementNamed(context, Routes.security),
          ),
          Container(
            padding: EdgeInsets.only(top: 125.0),
          ),
          Divider(thickness: 1.5),
          _createDrawerItem(
              icon: Icons.face,
              text: 'Profile',
              onTap: () => Navigator.pushReplacementNamed(context, Routes.profile),
          ),
          _createDrawerItem(
              icon: Icons.settings,
              text: 'Settings',
              onTap: () => Navigator.pushReplacementNamed(context, Routes.settings),
          )
        ],
      ),
    );
  }
  Widget _createHeader() {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      decoration: BoxDecoration(color: Colors.lightGreen),
      child: Stack(children: <Widget>[
        Positioned(
            bottom: 12.0,
            left: 8.0,
            child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w300),)
        ),
      ]),
    );
  }
  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon, color: Colors.lightGreen),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(text,  style: TextStyle(color: Colors.lightGreen, fontSize: 22, fontWeight: FontWeight.w400)),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}