import 'package:flutter/material.dart';

class ProfileClipperDesign extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 4 * size.height / 5);
    Offset curvePoint = Offset(size.width / 2, size.height);
    Offset endPoint = Offset(size.width, 4 * size.height / 5);

    path.quadraticBezierTo(
      curvePoint.dx,
      curvePoint.dy,
      endPoint.dx,
      endPoint.dy,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

// var controlPoint = Offset(size.width / 2, size.height / 2);
// var endPoint = Offset(size.width, size.height);

// Path path = Path()
//   ..moveTo(size.width / 2, 0)
//   ..lineTo(0, size.height)
//   ..quadraticBezierTo(
//       controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
//   ..close();
