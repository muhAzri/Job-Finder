import 'dart:async';

import 'package:flutter/material.dart';
import 'package:job_finder/shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: responsiveWidth(298, context),
              height: responsiveHeight(157, context),
              margin: EdgeInsets.only(bottom: responsiveHeight(101, context)),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image_splash.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              'Join Us & Explore Thousand \nof Great Job',
              style: blueTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
