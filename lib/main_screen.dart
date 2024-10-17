import 'package:flutter/material.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/models/fake_data.dart';
import 'package:techblog/my_colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 10;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.menu),
                  Image(
                    image: Assets.images.techblog.provider(),
                    height: size.height / 13.6,
                  ),
                  const Icon(Icons.search),
                ],
              ),
              const SizedBox(height: 8),
              Stack(
                children: [
                  Container(
                    width: size.width / 1.25,
                    height: size.height / 4.2,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      image: DecorationImage(
                        image: AssetImage(
                          homePagePosterMap["imageAsset"],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    foregroundDecoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        gradient: LinearGradient(
                          colors: gradiantColors.homePosterCoverGradiant,
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        )),
                  ),
                  Positioned(
                    bottom: 8,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                                homePagePosterMap["writer"] +
                                    " - " +
                                    homePagePosterMap["date"],
                                style: textTheme.titleSmall),
                            Row(
                              children: [
                                Text(
                                  homePagePosterMap["view"],
                                  style: textTheme.titleSmall,
                                ),
                                const SizedBox(width: 3),
                                const Icon(
                                  Icons.remove_red_eye_sharp,
                                  size: 16,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text("دوازده قدم برنامه نویسی یک دوره ی...",
                            style: textTheme.headlineSmall),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16),
              //tag list
              SizedBox(
                height: 60,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: tagList.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: EdgeInsets.fromLTRB(
                            0, 8, index == 0 ? bodyMargin : 15, 8),
                        child: Container(
                          height: 60,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            gradient: LinearGradient(
                              colors: gradiantColors.tags,
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
                        ),
                      );
                    })),
              )
            ],
          ),
        ),
      ),
    );
  }
}
// 23 دقیقه مانده