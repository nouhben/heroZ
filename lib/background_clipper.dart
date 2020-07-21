import 'package:flutter/material.dart';

class BackgroundClipper extends CustomClipper<Path> {
  double roundnessFactor = 50.0;
  @override
  getClip(Size size) {
    var _path = Path();
    _path.moveTo(0, size.height * 0.33);
    _path.lineTo(0, size.height - roundnessFactor);
    _path.quadraticBezierTo(0, size.height, roundnessFactor, size.height);
    _path.lineTo(size.width - roundnessFactor, size.height);
    _path.quadraticBezierTo(size.width, size.height, size.width, size.height - roundnessFactor);
    _path.lineTo(size.width, roundnessFactor * 2);
    _path.quadraticBezierTo(size.width, 0.0, size.width - roundnessFactor * 3, roundnessFactor * 2);
    _path.lineTo(roundnessFactor, size.height * 0.33 + 10);
    _path.quadraticBezierTo(
      0,
      size.height * 0.33 + roundnessFactor,
      0,
      size.height * 0.33 + roundnessFactor * 2,
    );

    return _path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    //throw UnimplementedError();
    return true;
  }
}
