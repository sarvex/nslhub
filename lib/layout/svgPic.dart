import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SvgPic extends StatelessWidget {
  SvgPic({Key key, @required this.img, this.height, this.width}) : super(key: key);

  final String img;
  final double height, width;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
        img,
        height: height,
       width: width,
    );
  }
}
