import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class BigText extends StatelessWidget {
  final Color color;
  final String text;
  double size;
  TextOverflow overFlow;
   BigText({Key? key, 
  this.color=const Color(0xFF332d2b),
  required this.text,
  this.size=20,
  this.overFlow=TextOverflow.ellipsis,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      style: TextStyle(
        fontFamily:'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: size,
        color: color,
      )
    );
    
  }
}