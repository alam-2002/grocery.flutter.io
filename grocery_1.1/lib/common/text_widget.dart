import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/colors_class.dart';

class Label extends StatelessWidget {
  String label;
  Color? color;
  FontWeight? fontWeight;
  FontStyle? fontStyle;
  TextAlign? textAlign;
  double? fontSize;
  TextOverflow? overflow;
  int? maxLines;
  final double? height;

  Label({
    super.key,
    required this.label,
    this.color,
    this.fontWeight,
    this.fontStyle,
    this.textAlign,
    this.fontSize,
    this.overflow,
    this.height,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      maxLines: maxLines,
      textAlign: textAlign ?? TextAlign.start,
      style: GoogleFonts.dmSans(
        textStyle: TextStyle(
          height: height,
          overflow: overflow,
          fontSize: fontSize ?? 18,
          color: color ?? ColorsClass.textColor,
          fontWeight: fontWeight ?? FontWeight.w400,
          fontStyle: fontStyle ?? FontStyle.normal,
        ),
      ),
    );
  }
}
