import 'package:flutter/material.dart';
import 'package:nslhub/layout/appbar.dart';
import 'package:nslhub/welcomePage.dart';

import 'layout/footer.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final dataKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppbar(context),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            WelcomePage(),
            Footer()
          ],
        ),
      ),
    );
  }
}
