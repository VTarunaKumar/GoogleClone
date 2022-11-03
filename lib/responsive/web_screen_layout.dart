import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Gmail",
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Images",
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
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
      body: Text("Hello from Web"),
    );
  }
}
