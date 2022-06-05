import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_finder/cubit/page_cubit_cubit.dart';

import '../../shared/theme.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  const CustomBottomNavigationItem(
      {Key? key, required this.imageUrl, required this.index})
      : super(key: key);

  final String imageUrl;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Image.asset(
        imageUrl,
        width: responsiveWidth(25, context),
        height: responsiveHeight(25, context),
        color:
            context.watch<PageCubit>().state == index ? blueColor : greyColor,
      ),
    );
  }
}
