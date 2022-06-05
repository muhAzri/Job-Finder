import 'package:flutter/material.dart';
import 'package:job_finder/interface/pages/main_page.dart';
import 'package:job_finder/interface/widgets/requirement_item.dart';
import 'package:job_finder/shared/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: responsiveWidth(375, context),
        height: responsiveHeight(278, context),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image_detail_page.png'),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          left: responsiveWidth(20, context),
          right: responsiveWidth(20, context),
          top: responsiveHeight(50, context),
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: responsiveWidth(24, context),
                height: responsiveHeight(24, context),
                margin: EdgeInsets.only(
                  right: responsiveWidth(110, context),
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon_back.png'),
                  ),
                ),
              ),
            ),
            Text(
              'Job Detail',
              style: whiteTextStyle.copyWith(
                fontWeight: bold,
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(
          top: responsiveHeight(250, context),
        ),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: responsiveWidth(25, context),
                vertical: responsiveHeight(30, context),
              ),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: responsiveWidth(74, context),
                        height: responsiveHeight(74, context),
                        padding: EdgeInsets.symmetric(
                          horizontal: responsiveWidth(9, context),
                          vertical: responsiveHeight(9, context),
                        ),
                        margin: EdgeInsets.only(
                          right: responsiveWidth(14, context),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Senior Project Manager',
                            style: blackTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: semiBold,
                            ),
                          ),
                          SizedBox(
                            height: responsiveHeight(4, context),
                          ),
                          Text(
                            'Tokopedia - Jakarta, ID',
                            style: blackTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: responsiveHeight(30, context),
                  ),
                  Text(
                    'Job Description',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: responsiveHeight(6, context),
                  ),
                  Text(
                    'Project managers play the lead role in planning, executing, monitoring, controlling, and closing out projects. They are accountable for the entire project scope, the project team and resources, the project budget, and the success or failure of the project.',
                    style: greyTextStyle,
                  ),
                  SizedBox(
                    height: responsiveHeight(22, context),
                  ),
                  Text(
                    'Job Requirements',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: responsiveHeight(8, context),
                  ),
                  Column(
                    children: const [
                      RequirmentItem(
                        text:
                            "Bachelor's degree in computer science, business, or a related field",
                      ),
                      RequirmentItem(
                        text:
                            "5-8 years of project management and related experience",
                      ),
                      RequirmentItem(
                        text:
                            "Project Management Professional (PMP) certification preferred",
                      ),
                      RequirmentItem(
                        text: "Proven ability to solve problems creatively",
                      ),
                      RequirmentItem(
                        text:
                            "Strong familiarity with project management software tools, methodologies, and best practices",
                      ),
                      RequirmentItem(
                        text:
                            "Experience seeing projects through the full life cycle",
                      ),
                      RequirmentItem(
                        text: "Excellent analytical skills",
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                  top: responsiveHeight(20, context),
                  bottom: responsiveHeight(50, context)),
              child: Row(
                children: [
                  Container(
                    width: responsiveWidth(267, context),
                    height: responsiveHeight(50, context),
                    margin: EdgeInsets.only(
                      left: responsiveWidth(25, context),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainPage()),
                            (route) => false);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: blueColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Apply Now',
                        style: whiteTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: responsiveWidth(50, context),
                    height: responsiveHeight(50, context),
                    margin: EdgeInsets.only(
                      left: responsiveWidth(10, context),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: responsiveWidth(17, context),
                        vertical: responsiveHeight(14, context)),
                    decoration: BoxDecoration(
                      color: backgroundGreyColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(
                      'assets/icon_saved.png',
                      color: blueColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            title(),
            content(),
          ],
        ),
      ),
    );
  }
}
