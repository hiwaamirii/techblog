import 'package:flutter/material.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/component/my_colors.dart';
import 'package:techblog/component/my_component.dart';
import 'package:techblog/component/my_strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
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
                MyStrings.imageProfileEdit,
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
          TechDivider(size: size),
          InkWell(
            onTap: () {},
            splashColor: SolidColors.primaryColor,
            child: SizedBox(
              height: 45,
              child: Center(
                child: Text(
                  MyStrings.myFavBlog,
                  style: textTheme.headlineLarge,
                ),
              ),
            ),
          ),
          TechDivider(size: size),
          InkWell(
            onTap: () {},
            splashColor: SolidColors.primaryColor,
            child: SizedBox(
              height: 45,
              child: Center(
                child: Text(
                  MyStrings.myFavPodcast,
                  style: textTheme.headlineLarge,
                ),
              ),
            ),
          ),
          TechDivider(size: size),
          InkWell(
            onTap: () {},
            splashColor: SolidColors.primaryColor,
            child: SizedBox(
              height: 45,
              child: Center(
                child: Text(
                  MyStrings.logout,
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
