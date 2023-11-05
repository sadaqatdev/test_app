import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:streamedinc/screens/home_screen/widgets/action_buttons.dart';
import 'package:streamedinc/screens/home_screen/widgets/content_area.dart';
import 'package:streamedinc/screens/home_screen/widgets/header.dart';

import '../../utils/assets_paths.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final imgList = [mac1, mac2, mac3, mac4];

  int currentIndex = 0;

  final controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Builder(
          builder: (context) {
            final double height = MediaQuery.of(context).size.height;
            return CarouselSlider(
              carouselController: controller,
              options: CarouselOptions(
                  height: height,
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
              items: imgList
                  .map((item) => Center(
                          child: Image.asset(
                        item,
                        fit: BoxFit.cover,
                        height: height,
                      )))
                  .toList(),
            );
          },
        ),
        const AppBarWidgetHome(),
        const ActionButtons(),
        const ContentWidget(),
        Positioned(
          bottom: 10,
          left: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => controller.animateToPage(entry.key),
                child: currentIndex == entry.key
                    ? Container(
                        width: 25.0,
                        height: 10.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [
                              Color(0xffF9B527),
                              Color(0xffF7631D),
                            ]),
                            borderRadius: BorderRadius.circular(50)),
                      )
                    : Container(
                        width: 10.0,
                        height: 10.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                      ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
