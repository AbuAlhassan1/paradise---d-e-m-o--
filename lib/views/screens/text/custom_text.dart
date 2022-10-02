import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText {

  Text homeSmall ({required String text, required Color color, required double? size, TextStyle? style}) {
    return Text(
      text,
      style: GoogleFonts.tajawal(
        textStyle: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: size,
        )
      ),
    );
  }

}