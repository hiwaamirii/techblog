import 'package:flutter/material.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/my_colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                        image: Image(image: Assets.images.posterTest.provider())
                            .image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 1.25,
                    height: size.height / 4.2,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        gradient: LinearGradient(
                          colors: gradiantColors.homePosterCoverGradiant,
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
