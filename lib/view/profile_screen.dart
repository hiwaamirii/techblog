import 'package:flutter/material.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/models/fake_data.dart';
import 'package:techblog/my_colors.dart';
import 'package:techblog/my_component.dart';
import 'package:techblog/my_strings.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({
    super.key,
    required this.size,
    required this.textTheme,
    required this.bodyMargin,
  });

  final Size size;
  final TextTheme textTheme;
  final double bodyMargin;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/avatar.png",
            height: 100,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageIcon(
                Assets.icons.bluepen.provider(),
                color: SolidColors.seeMore,
              ),
              const SizedBox(width: 8),
              Text(
                myStrings.imageProfileEdit,
                style: textTheme.bodyLarge,
              ),
            ],
          ),
          const SizedBox(height: 60),
          Text(
            "هیوا امیری",
            style: textTheme.headlineLarge,
          ),
          const SizedBox(height: 12),
          Text(
            "hiwaamiri.ir@gmail.com",
            style: textTheme.headlineLarge,
          ),
          const SizedBox(height: 40),
          techDivider(size: size),
          InkWell(
            onTap: () {},
            splashColor: SolidColors.primaryColor,
            child: SizedBox(
              height: 45,
              child: Center(
                child: Text(
                  myStrings.myFavBlog,
                  style: textTheme.headlineLarge,
                ),
              ),
            ),
          ),
          techDivider(size: size),
          InkWell(
            onTap: () {},
            splashColor: SolidColors.primaryColor,
            child: SizedBox(
              height: 45,
              child: Center(
                child: Text(
                  myStrings.myFavPodcast,
                  style: textTheme.headlineLarge,
                ),
              ),
            ),
          ),
          techDivider(size: size),
          InkWell(
            onTap: () {},
            splashColor: SolidColors.primaryColor,
            child: SizedBox(
              height: 45,
              child: Center(
                child: Text(
                  myStrings.logout,
                  style: textTheme.headlineLarge,
                ),
              ),
            ),
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
