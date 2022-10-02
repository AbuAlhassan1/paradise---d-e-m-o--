import 'package:flutter/material.dart';
import 'package:word_break_text/word_break_text.dart';

class CategoriesSlider extends StatelessWidget {
  const CategoriesSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;

    return Container( color: Colors.transparent,
    constraints: const BoxConstraints(
      minHeight: 20,
      maxHeight: 110
    ),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            width: 70, margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Container(
                  height: 60, width: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset("assets/images/1013887912233943130.gif"),
                ),
                const SizedBox( height: 10, ),
                const WordBreakText(
                  "Dolse & Accessories",
                  style: TextStyle(
                    fontSize: 12
                  ),
                  spacingByWrap: true,
                  spacing: 0,
                  textAlign: TextAlign.center,
                  wrapAlignment: WrapAlignment.center,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}