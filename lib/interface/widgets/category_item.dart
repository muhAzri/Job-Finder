import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.title,
    this.isSelected = false,
  }) : super(key: key);

  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: responsiveWidth(6, context)),
      padding: EdgeInsets.symmetric(
        horizontal: responsiveWidth(12, context),
        vertical: responsiveHeight(3, context),
      ),
      decoration: BoxDecoration(
        color: isSelected ? blueColor : backgroundGreyColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        title,
        style: isSelected ? whiteTextStyle : greyTextStyle,
      ),
    );
  }
}
