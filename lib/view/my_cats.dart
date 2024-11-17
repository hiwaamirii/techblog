import 'package:flutter/material.dart';
import 'package:techblog/my_strings.dart';

class MyCats extends StatelessWidget {
  const MyCats({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 10;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(right: bodyMargin, left: bodyMargin),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 32),
                  Image.asset(
                    "assets/icons/techbot.png",
                    height: 150,
                  ),
                   const SizedBox(height: 16),
                   Text(
                    MyStrings.successfulRegistration,
                    textAlign: TextAlign.center,
                    style: textTheme.headlineLarge,
                  ),
                  const SizedBox(height: 16),
                  TextField(textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      hintText: "نام و نام خانوادگی",
                      hintStyle: textTheme.headlineLarge,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Text(
                    MyStrings.chooseCat,
                    textAlign: TextAlign.center,
                    style: textTheme.headlineLarge,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
