import 'package:flutter/material.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/models/fake_data.dart';
import 'package:techblog/my_colors.dart';
import 'package:techblog/my_strings.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 10;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: SolidColors.scaffoldBg,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              Image(
                image: Assets.images.techblog.provider(),
                height: size.height / 13.6,
              ),
              const Icon(
                Icons.search,
                color: Colors.black,
              ),
            ],
          ),
        ),
        body: Stack(children: [
          homeScreen(size: size, textTheme: textTheme, bodyMargin: bodyMargin),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: size.height / 10,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: GradiantColors.bottomNavBackgroand,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(right: bodyMargin, left: bodyMargin),
                child: Container(
                  height: size.height / 8,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: GradiantColors.bottomNav,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: ImageIcon(
                          Assets.icons.home.provider(),
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: ImageIcon(
                          Assets.icons.write.provider(),
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: ImageIcon(
                          Assets.icons.user.provider(),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class homeScreen extends StatelessWidget {
  const homeScreen({
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
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
        child: Column(
          children: [
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
                        colors: GradiantColors.homePosterCoverGradiant,
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
                ),
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
                      ),
                    );
                  })),
            ),
            const SizedBox(height: 32),
            // see more
            Padding(
              padding: EdgeInsets.only(right: bodyMargin, bottom: 8),
              child: Row(
                children: [
                  Image.asset(
                    "assets/icons/bluepen.png",
                    height: 30,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    myStrings.viewHotestBlog,
                    style: textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
            // blog list
            SizedBox(
              height: size.height / 3.5,
              child: ListView.builder(
                itemCount: blogList.getRange(0, 5).length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  // blog item
                  return Padding(
                    padding:
                        EdgeInsets.only(right: index == 0 ? bodyMargin : 15),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: size.height / 5.3,
                            width: size.width / 2.4,
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(16),
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          blogList[index].imageUrl),
                                      fit: BoxFit.cover,
                                    ),
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
                                ),
                                Positioned(
                                  bottom: 8,
                                  left: 0,
                                  right: 0,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(blogList[index].writer,
                                          style: textTheme.titleSmall),
                                      Row(
                                        children: [
                                          Text(
                                            blogList[index].views,
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
                            blogList[index].title,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            // see hotset podcasts
            Padding(
              padding: EdgeInsets.only(right: bodyMargin, bottom: 8),
              child: Row(
                children: [
                  Image.asset(
                    "assets/icons/podcasticon.png",
                    height: 30,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    myStrings.viewHotestPodcasts,
                    style: textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
            // podcast item
            SizedBox(
              height: size.height / 3.5,
              child: ListView.builder(
                itemCount: blogList.getRange(0, 5).length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  // blog item
                  return Padding(
                    padding:
                        EdgeInsets.only(right: index == 0 ? bodyMargin : 15),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: size.height / 5.3,
                            width: size.width / 2.4,
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(16),
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          podCastList[index].imageUrl),
                                      fit: BoxFit.cover,
                                    ),
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
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          podCastList[index].title,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
