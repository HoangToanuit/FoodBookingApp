import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FoodPageBodyState createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:320,
      child: PageView.builder(
        itemCount: 5,
        itemBuilder: (context, position){
          return _buildPage(position);
        }
       )
    );
    
  }
  Widget _buildPage(int index) {
    return Stack(
      children: [  
      Container(
      height:220,
      margin: EdgeInsets.only(left:5,right:5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: index.isEven?Color(0xFF5c524f):Color(0xFF89dad0),
      image: DecorationImage(
        fit:BoxFit.cover,
        image:AssetImage(
          "assets/image/dish-3.png" 
        )
      )

    ),
    ),
      Align(
        child: Container(
        height:220,
        margin: EdgeInsets.only(left:5,right:5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: index.isEven?Color(0xFF5c524f):Color(0xFF89dad0),
        image: DecorationImage(
          fit:BoxFit.cover,
          image:AssetImage(
            "assets/image/dish-3.png" 
          )
        )
      
          ),
          ),
      
      )
      
      
    ]

    );
    
  }
}