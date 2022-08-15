import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class SmallText extends StatelessWidget {
  final Color color;
  final String text;
  double height;
  double size;
   SmallText({Key? key, 
  required this.text,
  this.color=const  Color(0xFF89dad0),
  this.size=12,
  this.height=1.2
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
        fontFamily:'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: size,
        color: color,
        height:height,
      )
    );
    
  }
}