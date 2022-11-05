import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/widgets/search.dart';
import 'package:google_clone/widgets/translation_buttons.dart';
import 'package:google_clone/widgets/web/search_buttons.dart';
import 'package:google_clone/widgets/web/web_footer.dart';

import '../widgets/mobile/mobile_footer.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: SizedBox(
          width: size.width * 0.30,
          child: const DefaultTabController(
              length: 2,
              child: TabBar(
                  labelColor: blueColor,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: blueColor,
                  tabs: [
                    Tab(
                      text: "ALL",
                    ),
                    Tab(
                      text: "IMAGES",
                    ),
                  ])),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/images/more-apps.svg"),
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10).copyWith(right: 10),
            child: MaterialButton(
              onPressed: () {},
              color: const Color(0xff1A73EB),
              child: const Text(
                "Sign in",
                style: TextStyle(color: primaryColor),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 5, right: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: size.height * 0.25,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Search(),
                      SizedBox(
                        height: 30,
                      ),

                      // SearchButtons(),
                      // SizedBox(
                      //   height: 20,
                      // ),
                      // TranslationButtons(),
                    ],
                  ),
                  const MobileFooter(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
