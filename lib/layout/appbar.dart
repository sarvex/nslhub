import 'package:flutter/material.dart';
import 'package:nslhub/config/images.dart';

Widget mainAppbar(context) => AppBar(
    leading: IconButton(
      icon: Icon(Icons.menu),
      onPressed: () {},
    ),
    title: Image.asset(Images.logo),
    actions: [IconButton(
      padding: EdgeInsets.symmetric(horizontal: 30),
      icon: Icon(Icons.account_circle),
      onPressed: () {},
    )],
    backgroundColor: Color(0xffededed),
    elevation: 0);