import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/models/fake_data.dart';
import 'package:url_launcher/url_launcher.dart';

import 'my_colors.dart';

class TechDivider extends StatelessWidget {
  const TechDivider({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1.5,
      color: SolidColors.dividerColor,
      endIndent: size.width / 6,
      indent: size.width / 6,
    );
  }
}

class loading extends StatelessWidget {
  const loading({super.key,});

  @override
  Widget build(BuildContext context) {
    return const SpinKitFadingCube(
      color: SolidColors.primaryColor,
      size: 32.0,
    );
  }
}

class MainTags extends StatelessWidget {
  MainTags({super.key, required this.textTheme, required this.index});

  final TextTheme textTheme;
  var index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(24)),
        gradient: LinearGradient(
          colors: GradiantColors.tags,
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
        child: Row(
          children: [
            ImageIcon(
              Assets.icons.hashtagicon.provider(),
              color: Colors.white,
              size: 16,
            ),
            const SizedBox(width: 8),
            Text(
              tagList[index].title,
              style: textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}

myLaunchUrl(String url) async {
  var uri = Uri.parse(url);
  if(await canLaunchUrl(Uri.parse(url))){
    await launchUrl(uri);
  }else {
    print("cloud not launch ${uri.toString()}");
  }
}