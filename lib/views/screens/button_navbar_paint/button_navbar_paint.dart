import 'package:flutter/material.dart';

class ButtonNavBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.white ..style = PaintingStyle.fill ..strokeWidth = 1;
    Path path = Path();

    // Path shadowPath = Path();

    double height = size.height;
    double width = size.width;

    path.moveTo(0, height*0.65);
    path.quadraticBezierTo(width*0.01, height*0.45, width*0.06, height*0.45);
    path.lineTo(width*0.35, height*0.45);
    path.quadraticBezierTo(width*0.4, height*0.45, width*0.43, height*0.7);
    path.quadraticBezierTo(width*0.45, height*0.83, width*0.5, height*0.85);
    path.quadraticBezierTo(width*0.55, height*0.83, width*0.57, height*0.7);
    path.quadraticBezierTo(width*0.6, height*0.45, width*0.65, height*0.45);
    path.lineTo(width*0.94, height*0.45);
    path.quadraticBezierTo(width*0.99, height*0.45, width, height*0.65);
    path.lineTo(width, height);
    path.lineTo(0, height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}

class ButtonNavBarShadowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Paint paint = Paint()..color = Colors.black ..style = PaintingStyle.fill ..strokeWidth = 1;
    Path path = Path();

    double height = size.height;
    double width = size.width;

    path.moveTo(0, height*0.65);
    path.quadraticBezierTo(width*0.01, height*0.45, width*0.06, height*0.45);
    path.lineTo(width*0.35, height*0.45);
    path.quadraticBezierTo(width*0.4, height*0.45, width*0.43, height*0.7);
    path.quadraticBezierTo(width*0.45, height*0.88, width*0.5, height*0.88);
    path.quadraticBezierTo(width*0.55, height*0.88, width*0.57, height*0.7);
    path.quadraticBezierTo(width*0.6, height*0.45, width*0.65, height*0.45);
    path.lineTo(width*0.94, height*0.45);
    path.quadraticBezierTo(width*0.99, height*0.45, width, height*0.65);
    path.lineTo(width, height);
    path.lineTo(0, height);
    path.close();


    canvas.drawShadow(path, Colors.black, 10, true);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}