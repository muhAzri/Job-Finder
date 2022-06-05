import 'package:flutter/material.dart';
import 'package:job_finder/interface/widgets/job_tile.dart';
import 'package:job_finder/interface/widgets/most_popular_card.dart';
import 'package:job_finder/shared/theme.dart';

import '../widgets/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: responsiveHeight(45, context),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, Azri ',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: responsiveHeight(10, context),
                ),
                Text(
                  'Find Your Great Job',
                  style: blueTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Container(
              width: responsiveWidth(42, context),
              height: responsiveHeight(42, context),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image_profile.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget searchBar() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: responsiveHeight(22, context),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: responsiveWidth(16, context),
          vertical: responsiveHeight(12, context),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                responsiveWidth(16, context),
              ),
            ),
            hintText: 'Search for a job',
            hintStyle: greyTextStyle.copyWith(
              fontSize: 16,
            ),
            prefixIcon: Icon(
              Icons.search,
              size: responsiveWidth(24, context),
            ),
          ),
        ),
      );
    }

    Widget mostPopular() {
      return Container(
        margin: EdgeInsets.only(top: responsiveHeight(22, context)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Most Popular',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  MostPopularCard(),
                  MostPopularCard(),
                  MostPopularCard(),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget category() {
      return Container(
        margin: EdgeInsets.only(top: responsiveHeight(22, context)),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              CategoryItem(
                title: 'All Jobs',
                isSelected: true,
              ),
              CategoryItem(
                title: 'UI Designer',
              ),
              CategoryItem(
                title: 'FE Dev',
              ),
              CategoryItem(
                title: 'PM',
              ),
              CategoryItem(
                title: 'Graphic Designer',
              ),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(
          bottom: responsiveHeight(40, context),
        ),
        child: GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          children: const [
            JobTile(),
            JobTile(),
            JobTile(),
            JobTile(),
            JobTile(),
            JobTile(),
          ],
        ),
      );
    }

    return ListView(
      padding: EdgeInsets.symmetric(horizontal: responsiveWidth(25, context)),
      children: [
        header(),
        searchBar(),
        mostPopular(),
        category(),
        content(),
      ],
    );
  }
}
