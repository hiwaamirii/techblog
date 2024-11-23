import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techblog/models/fake_data.dart';
import 'package:techblog/my_component.dart';
import 'package:techblog/my_strings.dart';

import '../gen/assets.gen.dart';
import '../my_colors.dart';

class MyCats extends StatefulWidget {
  const MyCats({super.key});

  @override
  State<MyCats> createState() => _MyCatsState();
}

class _MyCatsState extends State<MyCats> {
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
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                            crossAxisCount: 2,
                            childAspectRatio: 0.3,
                          ),
                          itemBuilder: ((context, index) {
                            return InkWell(
                              onTap: (() {
                                setState(() {
                                 if(!selectedTags.contains(tagList[index])) {
                                   selectedTags.add(tagList[index]);
                                 } else {
                                   print("${tagList[index].title} exist");
                                 }

                                });
                              }),
                              child:
                                  MainTags(textTheme: textTheme, index: index),
                            );
                          })),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Image.asset("assets/icons/down_cat_arrow.png", scale: 3),
                  // selected tags
                  Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: SizedBox(
                      width: double.infinity,
                      height: 95,
                      child: GridView.builder(
                          physics: const ClampingScrollPhysics(),
                          itemCount: selectedTags.length,
                          scrollDirection: Axis.horizontal,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                            crossAxisCount: 2,
                            childAspectRatio: 0.2,
                          ),
                          itemBuilder: ((context, index) {
                            return Container(
                              height: 60,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(24)),
                                color: SolidColors.surface,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      selectedTags[index].title,
                                      style: textTheme.headlineLarge,
                                    ),
                                    const SizedBox(width: 8),
                                    InkWell(
                                      onTap: (() {
                                        setState(() {
                                          selectedTags.removeAt(index);
                                        });
                                      }),
                                      child: const Icon(
                                        CupertinoIcons.delete,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          })),
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
