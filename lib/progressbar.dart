import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProgresBar extends CustomPainter{

  Color progresBarColor;
  double songCompleted;
  double circleRadius;


  ProgresBar({this.progresBarColor,this.songCompleted,this.circleRadius});
  @override
  void paint(Canvas canvas, Size size) {
    var songProgressBar = Paint()
    ..color=progresBarColor
    ..strokeWidth=2
    ..strokeCap=StrokeCap.round;
    var progressInicator = Paint()
    ..color=Colors.deepOrange;

    var songProgressBarCompleted = Paint()
    ..color=Colors.deepOrange
    ..strokeWidth=2
    ..strokeCap=StrokeCap.round;
    

    canvas.drawLine(Offset(size.width-size.width,size.height/2), Offset(size.width,size.height/2), songProgressBar);
    canvas.drawCircle(Offset(this.songCompleted,size.height/2), circleRadius, progressInicator);
    canvas.drawLine(Offset(0,size.height/2), Offset(this.songCompleted,size.height/2), songProgressBarCompleted);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    
    return true;
  }

}