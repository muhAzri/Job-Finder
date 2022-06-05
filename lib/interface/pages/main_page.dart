import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_finder/interface/pages/home_page.dart';
import 'package:job_finder/interface/pages/saved_page.dart';
import 'package:job_finder/interface/pages/settings_page.dart';
import 'package:job_finder/interface/widgets/custom_bottom_navigation_item.dart';

import '../../cubit/page_cubit_cubit.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: responsiveHeight(70, context),
          padding: EdgeInsets.symmetric(
            vertical: responsiveHeight(20, context),
            horizontal: responsiveWidth(68, context),
          ),
          decoration: BoxDecoration(
            color: whiteColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CustomBottomNavigationItem(
                imageUrl: 'assets/icon_home.png',
                index: 0,
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/icon_saved.png',
                index: 1,
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/icon_settings.png',
                index: 2,
              ),
            ],
          ),
        ),
      );
    }

    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const SavedPage();
        case 2:
          return const SettingsPage();
        default:
          return const HomePage();
      }
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: backgroundColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              customBottomNavigation(),
            ],
          ),
        );
      },
    );
  }
}
