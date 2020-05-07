import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Used to give border to only the ClippedPath of the login card
class CustomBorderStroke extends CustomPainter {
  CustomBorderStroke({@required this.stroke, @required this.color});

  final double stroke;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = stroke
      ..color = color;

    Path path = Path();
    path.lineTo(35, 75);
    path.arcToPoint(
      Offset(65, 90),
      radius: Radius.circular(40),
      clockwise: false,
    );
    path.lineTo(size.width - 30, 88);
    path.arcToPoint(
      Offset(size.width, 115),
      radius: Radius.circular(28),
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

//clips the container, it is expensive so don't use often
class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(40, 70);
    path.arcToPoint(
      Offset(80, 90),
      radius: Radius.circular(40),
      clockwise: false,
    );
    path.lineTo(size.width - 30, 90);
    path.arcToPoint(
      Offset(size.width, 125),
      radius: Radius.circular(30),
    );
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
