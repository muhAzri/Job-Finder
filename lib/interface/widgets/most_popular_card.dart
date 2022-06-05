import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../pages/detail_page.dart';

class MostPopularCard extends StatelessWidget {
  const MostPopularCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Container(
        width: responsiveWidth(241, context),
        height: responsiveHeight(134, context),
        margin: EdgeInsets.only(
          top: responsiveHeight(12, context),
          right: responsiveWidth(14, context),
        ),
        padding: EdgeInsets.symmetric(
          vertical: responsiveHeight(12, context),
          horizontal: responsiveWidth(12, context),
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(
            responsiveWidth(16, context),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: responsiveWidth(43, context),
                  height: responsiveHeight(43, context),
                  padding: EdgeInsets.symmetric(
                    horizontal: responsiveWidth(6, context),
                    vertical: responsiveHeight(6, context),
                  ),
                  decoration: BoxDecoration(
                    color: backgroundGreyColor,
                    borderRadius: BorderRadius.circular(
                      responsiveWidth(8, context),
                    ),
                  ),
                  child: Image.asset(
                    'assets/image_company_logo.png',
                  ),
                ),
                const Spacer(),
                Text(
                  '\$50 - \$75 / Mo',
                  style: blackTextStyle,
                ),
              ],
            ),
            SizedBox(
              height: responsiveHeight(7, context),
            ),
            Text(
              'Senior Project Manager',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: responsiveHeight(4, context),
            ),
            Text(
              'Tokopedia - Jakarta, ID',
              style: greyTextStyle,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: responsiveWidth(18, context),
                height: responsiveHeight(18, context),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_saved.png',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
