import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RatingBar extends StatelessWidget {
  final double rate;
  final double size;
  const RatingBar(this.rate, this.size, {Key? key}) : super(key: key);

  List<Widget> ratingIcons (double num) {
    List<Widget> myList = [];
    Color color;
    int count = num.round();
    for( int i = 0; i <= 4; i++ ){
      color = count <= 0 ? Colors.grey : Colors.amber;
      myList.add(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1),
          child: SvgPicture.asset("assets/icons/fi-sr-star.svg", color: color, width: size,),
        )
      );
      count--;
    }
    return myList;
  }

  @override
  Widget build(BuildContext context) {

    // int intRate = rate.round();

    return SizedBox(
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: ratingIcons (rate),
      ),
    );
  }
}