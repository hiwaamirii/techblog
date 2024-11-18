import 'package:flutter/material.dart';
import 'package:techblog/models/fake_data.dart';
import 'package:techblog/my_component.dart';
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
                  TextField(
                    textAlign: TextAlign.center,
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
                  // tag list
                  Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: SizedBox(
                      width: double.infinity,
                      height: 95,
                      child: GridView.builder(
                        physics: const ClampingScrollPhysics(),
                          itemCount: tagList.length,

                          scrollDirection: Axis.horizontal,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                            crossAxisCount: 2,
                            childAspectRatio: 0.3,
                          ),
                          itemBuilder: ((context, index) {
                            return MainTags(textTheme: textTheme, index: index);
                          })
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Image.asset("assets/icons/down_cat_arrow.png",scale: 3),
                  Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: SizedBox(
                      width: double.infinity,
                      height: 95,
                      child: GridView.builder(
                          physics: const ClampingScrollPhysics(),
                          itemCount: tagList.length,

                          scrollDirection: Axis.horizontal,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                            crossAxisCount: 2,
                            childAspectRatio: 0.3,
                          ),
                          itemBuilder: ((context, index) {
                            return MainTags(textTheme: textTheme, index: index);
                          })
                      ),
                    ),
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
