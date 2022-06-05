import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class RequirmentItem extends StatelessWidget {
  const RequirmentItem({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: responsiveHeight(15, context)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: responsiveWidth(10, context),
            height: responsiveHeight(10, context),
            margin: EdgeInsets.only(
              top: responsiveHeight(4, context),
              right: responsiveWidth(8, context),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: greyColor,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: greyTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
