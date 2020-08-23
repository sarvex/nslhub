import 'package:flutter/material.dart';
import 'package:nslhub/layout/device.dart';
import 'package:nslhub/theme.dart';
import 'package:responsive_widgets/responsive_widgets.dart';


class Footer extends StatelessWidget {
  const Footer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(context, height: NslHub.height, width: NslHub.width, allowFontScaling: true);
    return Device(
      desktop: _desktop(context),
    );
  }

  Widget _desktop(BuildContext context) => Container(
     width: double.infinity,
      padding: EdgeInsets.all(Device.column(context)),
      decoration: const BoxDecoration(color: Color(0xff323232)),
      child: Text('Copyright © 2020 Brane Enterprises Private Limited.', style: Theme.of(context).textTheme.subtitle2.copyWith(color: Colors.white)));

}
