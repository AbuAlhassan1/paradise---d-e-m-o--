import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StoresPageAppBar extends StatelessWidget {
  const StoresPageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(height: 80, width: width, color: Colors.white,
      child: SafeArea(
        child: Container(color: Colors.transparent, margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset("assets/icons/fi-rr-search.svg"),
              Expanded(
                child: Container(
                  color: Colors.transparent,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Find a store"
                    ),
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}