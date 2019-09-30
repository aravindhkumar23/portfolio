import 'package:flutter/material.dart';

class ArrowClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    final double midPoint = size.height / 2;
    final double clipHeight = 20;
    path.lineTo(0.0, midPoint - clipHeight);
    path.lineTo(0.0, midPoint - clipHeight);
    path.lineTo(20, midPoint - (clipHeight / 2));
    path.lineTo(0, midPoint + (clipHeight / 2));
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
