import 'package:flutter/material.dart';
import 'package:nslhub/config/images.dart';
import 'package:nslhub/theme.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

import 'layout/device.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key key, this.dataKey}) : super(key: key);
  final GlobalKey dataKey;

  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(context, height: NslHub.height, width: NslHub.width, allowFontScaling: true);
    return Device(
      desktop: _desktop(context),
      mobile: _desktop(context),
    );
  }

  Widget _desktop(BuildContext context) => Container(
        padding: EdgeInsets.all(Device.column(context)),
        height: MediaQuery.of(context).size.height - Device.column(context),
        width: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Images.welcomeBg), fit: BoxFit.cover)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
                flex: 4,
                fit: FlexFit.tight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: Device.column(context)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('Two generation ahead',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4
                                      .copyWith(color: Color(0xffff0000), fontWeight: FontWeight.bold)),
                              Text('of the no code platforms',
                                  style: Theme.of(context).textTheme.headline4.copyWith(fontWeight: FontWeight.bold, color: Colors.black)),
                              Text('Eliminated code literally & completely',
                                  style: Theme.of(context).textTheme.headline5),
                              Text('Power AI Dramatically',
                                  style: Theme.of(context).textTheme.headline5),
                              SizedBox(height: Device.margin(context) * 2),
                              Text('Learn & develop',
                                  style: Theme.of(context).textTheme.headline4.copyWith(fontWeight: FontWeight.bold, color: Colors.black)),
                              Text('in hours, not years',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4
                                      .copyWith(color: Color(0xffff0000), fontWeight: FontWeight.bold))
                            ])),
                    Image.asset(Images.book, fit: BoxFit.contain, height: 390)
                  ],
                ))
          ],
        ),
      );
}
