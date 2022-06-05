import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

FontWeight light = FontWeight.w300;
FontWeight normal = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extrabold = FontWeight.w800;
FontWeight black = FontWeight.w900;

Color backgroundColor = const Color(0xffF6F6F6);
Color blueColor = const Color(0xff3E4F88);
Color blackColor = const Color(0xff333333);
Color whiteColor = const Color(0xffFFFFFF);
Color backgroundGreyColor = const Color(0xffE0E0E0);
Color greyColor = const Color(0xff828282);

TextStyle blueTextStyle = GoogleFonts.inter(
  color: blueColor,
);

TextStyle blackTextStyle = GoogleFonts.inter(
  color: blackColor,
);

TextStyle whiteTextStyle = GoogleFonts.inter(
  color: whiteColor,
);

TextStyle greyTextStyle = GoogleFonts.inter(
  color: greyColor,
);


// NOTE : Responsive Functions

responsiveWidth(double width, context) {
  return width * MediaQuery.of(context).size.width / 375;
}

responsiveHeight(double height, context) {
  return height * MediaQuery.of(context).size.height / 812;
}
