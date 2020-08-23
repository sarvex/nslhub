import 'package:flutter/material.dart';

import 'about.dart';
import 'ai.dart';
import 'careers.dart';
import 'creator.dart';
import 'login.dart';
import 'nslhub.dart';
import 'products.dart';
import 'services.dart';
import 'solutions.dart';
import 'transformations.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: choices.length,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              isScrollable: true,
              tabs: choices.map((Choice choice) {
                return Tab(
                  child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Icon(choice.icon), Text(choice.title)],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: choices.map((Choice choice) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: ChoiceCard(choice: choice),
              );
            }).toList(),
          ),
        ),
      );
}

class Choice {
  const Choice({this.title, this.icon, this.page});

  final String title;
  final IconData icon;
  final Widget page;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'nslhub', icon: Icons.directions_car, page: Nslhub()),
  const Choice(title: 'Services', icon: Icons.directions_bike, page: Services()),
  const Choice(title: 'Transformations', icon: Icons.directions_boat, page: Transformations()),
  const Choice(title: 'Solutions', icon: Icons.directions_bus, page: Solutions()),
  const Choice(title: 'Creator', icon: Icons.directions_railway, page: Creator()),
  const Choice(title: 'AI', icon: Icons.directions_walk, page: Ai()),
  const Choice(title: 'Products', icon: Icons.directions_boat, page: Products()),
  const Choice(title: 'About', icon: Icons.directions_bus, page: About()),
  const Choice(title: 'Careers', icon: Icons.directions_railway, page: Careers()),
  const Choice(title: 'Login', icon: Icons.directions_walk, page: Login()),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) => Card(
        color: Colors.white,
        child: Center(child: choice.page),
      );
}
