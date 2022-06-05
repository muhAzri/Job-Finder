import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../pages/detail_page.dart';

class JobTile extends StatelessWidget {
  const JobTile({Key? key}) : super(key: key);

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
        width: responsiveWidth(155, context),
        height: responsiveHeight(127, context),
        margin: EdgeInsets.only(
          left: responsiveWidth(7, context),
          right: responsiveWidth(7, context),
          bottom: responsiveHeight(15, context),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: responsiveWidth(17, context),
          vertical: responsiveHeight(17, context),
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: responsiveWidth(40, context),
                  height: responsiveHeight(40, context),
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
                Container(
                  width: responsiveWidth(16, context),
                  height: responsiveHeight(16, context),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_saved.png'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: responsiveHeight(17, context),
            ),
            Text(
              'Senior Project Manager',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 15,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: responsiveHeight(2, context),
            ),
            Text(
              'Tokopedia - Jakarta, ID',
              style: greyTextStyle.copyWith(
                fontSize: 12,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: responsiveHeight(6, context),
            ),
            Text(
              '\$50 - \$75 / Mo',
              style: greyTextStyle.copyWith(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
