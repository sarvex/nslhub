import 'package:flutter/material.dart';

import 'config/images.dart';
import 'layout/appbar.dart';
import 'layout/device.dart';
import 'layout/footer.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppbar(context),
      body: SafeArea(
        child: ListView(
          children: <Widget>[_loginContainer(context), Footer()],
        ),
      ),
    );
  }

  Widget _loginContainer(BuildContext context) => Container(
      padding: EdgeInsets.symmetric(horizontal: Device.column(context)),
      height: MediaQuery.of(context).size.height - Device.column(context),
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(Images.welcomeBg), fit: BoxFit.cover, alignment: Alignment.bottomCenter)),
      child: Column(children: [
        Row(children: [
          Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: Device.column(context), horizontal: Device.grid(context)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: Device.grid(context)),
                        TextField(decoration: new InputDecoration(border: OutlineInputBorder(), labelText: 'Username')),
                        SizedBox(height: Device.margin(context)),
                        TextField(decoration: new InputDecoration(border: OutlineInputBorder(), labelText: 'Password')),
                        SizedBox(height: Device.margin(context)*2),
                        RaisedButton(
                          padding:
                              EdgeInsets.symmetric(horizontal: Device.column(context), vertical: Device.margin(context)),
                          color: Colors.redAccent,
                          child: Text('Login', style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.white)),
                          onPressed: () {},
                        )
                      ]))),
          Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Image.asset(Images.loginBg, fit: BoxFit.fitHeight, height: MediaQuery.of(context).size.height * 0.5))
        ])
      ]));
}
