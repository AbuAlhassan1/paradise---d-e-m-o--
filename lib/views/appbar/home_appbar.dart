import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(height: 80, width: width, color: Colors.white,
      child: SafeArea(
        child: Container(color: Colors.transparent, margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset("assets/icons/fi-rr-search.svg"),
              const Text("PARADISE"),
              SvgPicture.asset("assets/icons/fi-rr-bell.svg"),
            ],
          ),
        ),
      ),
    );
  }
}