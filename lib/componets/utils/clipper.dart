import 'package:flutter/material.dart';

class TopCircularCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path
      ..lineTo(size.width - 60, 0)
      ..quadraticBezierTo(size.width, 0, size.width, 60)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..lineTo(0, 60)
      ..quadraticBezierTo(0, 0, 60, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
