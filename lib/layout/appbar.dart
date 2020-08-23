import 'package:flutter/material.dart';
import 'package:nslhub/config/images.dart';

import '../login.dart';

Widget mainAppbar(context) => AppBar(
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
      ),
      title: Image.asset(Images.logo),
      actions: [
        IconButton(
            padding: EdgeInsets.symmetric(horizontal: 30),
            icon: Icon(Icons.account_circle),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
            })
      ],
      backgroundColor: Color(0xffededed),
      elevation: 0,
    );
