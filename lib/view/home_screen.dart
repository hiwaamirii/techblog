import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:techblog/controller/home_screen_controller.dart';
import 'package:techblog/models/fake_data.dart';
import 'package:techblog/component/my_colors.dart';
import 'package:techblog/component/my_component.dart';
import 'package:techblog/component/my_strings.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    super.key,
    required this.size,
    required this.textTheme,
    required this.bodyMargin,
  });

  HomeScreenController homeScreenController = Get.put(HomeScreenController());

  final Size size;
  final TextTheme textTheme;
  final double bodyMargin;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Obx(
          () => Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
          child: homeScreenController.loading.value==false?  Column(
              children: [
                poster(),
                const SizedBox(height: 16),
                HomePageTagList(bodyMargin: bodyMargin, textTheme: textTheme),
                const SizedBox(height: 32),
                SeeMoreBlog(bodyMargin: bodyMargin, textTheme: textTheme),
                TopVisited(),
                SeeMorePodcast(bodyMargin: bodyMargin, textTheme: textTheme),
                topPodcasts(),
                const SizedBox(height: 60),
              ],
            )
          : const Center(child: loading()),
        ),
      ),
    );
  }

  Widget TopVisited() {
    return SizedBox(
      height: size.height / 3.5,
      child: Obx(
        () => ListView.builder(
          itemCount: homeScreenController.topVisitedList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            // blog item
            return Padding(
              padding: EdgeInsets.only(right: index == 0 ? bodyMargin : 15),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: size.height / 5.3,
                      width: size.width / 2.4,
                      child: Stack(
                        children: [
                          CachedNetworkImage(
                            imageUrl:
                                homeScreenController.topPodcasts[index].poster!,
                            imageBuilder: ((context, imageProvider) =>
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(16),
                                    ),
                                    image: DecorationImage(
                                        image: imageProvider,
                                        fit: BoxFit.cover),
                                  ),
                                  foregroundDecoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(16),
                                    ),
                                    gradient: LinearGradient(
                                      colors: GradiantColors.blogPost,
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                    ),
                                  ),
                                )),
                            placeholder: ((context, url) =>
                                const loading()),
                            errorWidget: ((context, url, error) => const Icon(
                                  Icons.image_not_supported_outlined,
                                  size: 50,
                                  color: Colors.grey,
                                )),
                          ),
                          Positioned(
                            bottom: 8,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                    homeScreenController
                                        .topVisitedList[index].author!,
                                    style: textTheme.titleSmall),
                                Row(
                                  children: [
                                    Text(
                                      homeScreenController
                                          .topVisitedList[index].view!,
                                      style: textTheme.titleSmall,
                                    ),
                                    const SizedBox(width: 8),
                                    const Icon(
                                      Icons.remove_red_eye_sharp,
                                      size: 16,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width / 2.4,
                    child: Text(
                      homeScreenController.topVisitedList[index].title!,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: textTheme.headlineLarge,
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget poster() {
    return Stack(
      children: [
        Container(
          width: size.width / 1.25,
          height: size.height / 4.2,
          foregroundDecoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              gradient: LinearGradient(
                colors: GradiantColors.homePosterCoverGradiant,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
          child: CachedNetworkImage(
            imageUrl: homeScreenController.poster.value.image!,
            imageBuilder: ((context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16),
                    ),
                    image: DecorationImage(
                        image: imageProvider, fit: BoxFit.cover),
                  ),
                )),
            placeholder: ((context, url) => const loading()),
            errorWidget: ((context, url, error) => const Icon(
                  Icons.image_not_supported_outlined,
                  size: 50,
                  color: Colors.grey,
                )),
          ),
        ),
        Positioned(
          bottom: 8,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Text(homeScreenController.poster.value.title!,
                  style: textTheme.headlineSmall),
            ],
          ),
        ),
      ],
    );
  }

  Widget topPodcasts() {
    return SizedBox(
      height: size.height / 3.5,
      child: Obx(
        () => ListView.builder(
          itemCount: homeScreenController.topPodcasts.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            // blog item
            return Padding(
              padding: EdgeInsets.only(right: index == 0 ? bodyMargin : 15),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: size.height / 5.3,
                      width: size.width / 2.4,
                      child: CachedNetworkImage(
                        imageUrl:
                            homeScreenController.topPodcasts[index].poster!,
                        imageBuilder: ((context, imageProvider) => Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(16),
                                ),
                                image: DecorationImage(
                                    image: imageProvider, fit: BoxFit.cover),
                              ),
                            )),
                        placeholder: ((context, url) => const loading()),
                        errorWidget: ((context, url, error) => const Icon(
                              Icons.image_not_supported_outlined,
                              size: 50,
                              color: Colors.grey,
                            )),
                      ),
                    ),
                  ),
                  Text(
                    homeScreenController.topPodcasts[index].title!,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: textTheme.headlineLarge,
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}

class SeeMorePodcast extends StatelessWidget {
  const SeeMorePodcast({
    super.key,
    required this.bodyMargin,
    required this.textTheme,
  });

  final double bodyMargin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: bodyMargin, bottom: 8),
      child: Row(
        children: [
          Image.asset(
            "assets/icons/podcasticon.png",
            height: 30,
          ),
          const SizedBox(width: 8),
          Text(
            MyStrings.viewHotestPodcasts,
            style: textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}

class SeeMoreBlog extends StatelessWidget {
  const SeeMoreBlog({
    super.key,
    required this.bodyMargin,
    required this.textTheme,
  });

  final double bodyMargin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: bodyMargin, bottom: 8),
      child: Row(
        children: [
          Image.asset(
            "assets/icons/bluepen.png",
            height: 30,
          ),
          const SizedBox(width: 8),
          Text(
            MyStrings.viewHotestBlog,
            style: textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}

class HomePageTagList extends StatelessWidget {
  const HomePageTagList({
    super.key,
    required this.bodyMargin,
    required this.textTheme,
  });

  final double bodyMargin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tagList.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding:
                  EdgeInsets.fromLTRB(0, 8, index == 0 ? bodyMargin : 15, 8),
              child: MainTags(
                textTheme: textTheme,
                index: index,
              ),
            );
          })),
    );
  }
}
