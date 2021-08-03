import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:socialmediaui/data/data.dart';
import 'package:socialmediaui/screen/homeScreen.dart';
import 'package:socialmediaui/screen/loginscreen.dart';
import 'package:socialmediaui/screen/profileScreen.dart';
import 'package:socialmediaui/widgets/drawer_header.dart';

class CustomDrawer extends StatelessWidget {
  _option(Icon icon, String text, Function onTap) {
    return ListTile(
      leading: icon,
      title: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
      ),
      onTap: onTap(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          header(),
          ListTile(
              leading: Icon(
                Icons.dashboard,
                color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'Home',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/home');
              }),
          _option(
              Icon(Icons.chat_bubble_outline,
                  color: Theme.of(context).primaryColor),
              'Chat',
              () {}),
          _option(Icon(Icons.map, color: Theme.of(context).primaryColor), 'Map',
              () {}),
          ListTile(
              leading: Icon(Icons.account_box_rounded,
                  color: Theme.of(context).primaryColor),
              title: Text('Your Account',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/profileScreen');
              }),
          _option(
              Icon(
                Icons.settings,
                color: Theme.of(context).primaryColor,
              ),
              'Setting',
              () {}),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 1,
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: ListTile(
                leading: Icon(
                  Icons.logout_rounded,
                  color: Theme.of(context).primaryColor,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
