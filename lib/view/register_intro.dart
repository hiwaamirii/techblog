import 'package:flutter/material.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/my_colors.dart';
import 'package:techblog/my_strings.dart';

class RegisterIntro extends StatelessWidget {
  const RegisterIntro({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: Assets.icons.user.provider(),
              color: SolidColors.seeMore,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: myStrings.welcome,
                  style: textTheme.headlineLarge,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  textStyle: MaterialStateProperty.resolveWith(
                    (states) {
                      if (states.contains(MaterialState.pressed)) {
                        return const TextStyle(
                            fontSize: 25, color: Colors.white);
                      }
                      return const TextStyle(fontSize: 20, color: Colors.white);
                    },
                  ),
                  backgroundColor: MaterialStateProperty.resolveWith(
                    (states) {
                      if (states.contains(MaterialState.pressed)) {
                        return SolidColors.seeMore;
                      }
                      return SolidColors.primaryColor;
                    },
                  ),
                ),
                child: const Text(
                  "بزن بریم",
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
