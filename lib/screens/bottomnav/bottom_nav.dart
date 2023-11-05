import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:streamedinc/screens/bottomnav/provider/bottom_nav_provider.dart';

import 'package:streamedinc/screens/widgets/snakbar_widget.dart';
import 'package:streamedinc/theme/colors.dart';
import 'package:streamedinc/screens/widgets/gradient_text.dart';
import 'package:streamedinc/theme/theme_ext.dart';

import '../../utils/gradients.dart';
import '../../utils/lables_utils.dart';
import '../../utils/assets_paths.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavProvider>(builder: (context, provider, c) {
      return Scaffold(
        body: provider.currentWidget,
        bottomNavigationBar: Container(
          height: 70,
          decoration: const BoxDecoration(color: primaryColor),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          alignment: Alignment.center,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavBarItem(
                iconPath: homeSVG,
                label: LabelsUtils.home,
                onTap: () {
                  provider.updateCurrentScreen(0);
                },
                selected: provider.screenIndex == 0,
              ),
              NavBarItem(
                iconPath: discoverSVG,
                label: LabelsUtils.discover,
                onTap: () {
                  provider.updateCurrentScreen(1);
                },
                selected: provider.screenIndex == 1,
              ),
              GestureDetector(
                  onTap: () {
                    context.showSnackBar(msg: LabelsUtils.tap);
                  },
                  child: const Image(
                    image: AssetImage(addImg),
                    height: 40,
                  )),
              NavBarItem(
                iconPath: dealsSVG,
                label: LabelsUtils.deals,
                onTap: () {
                  provider.updateCurrentScreen(2);
                },
                selected: provider.screenIndex == 2,
              ),
              NavBarItem(
                iconPath: profileSVG,
                label: LabelsUtils.profile,
                onTap: () {
                  provider.updateCurrentScreen(3);
                },
                selected: provider.screenIndex == 3,
              ),
            ],
          ),
        ),
      );
    });
  }
}

class NavBarItem extends StatelessWidget {
  const NavBarItem(
      {super.key,
      required this.iconPath,
      required this.label,
      required this.onTap,
      required this.selected});

  final String iconPath;
  final String label;
  final bool selected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ShaderMask(
            blendMode: BlendMode.srcATop,
            shaderCallback: (Rect bounds) {
              return selected
                  ? gradientPrimary.createShader(bounds)
                  : gradientGrey.createShader(bounds);
            },
            child: SvgPicture.asset(
              iconPath,
              height: 25,
              width: 25,
            ),
          ),
          selected
              ? GradientWidget(
                  label,
                  gradient: gradientPrimary,
                  style: const TextStyle(
                      fontSize: 10, fontWeight: FontWeight.bold),
                )
              : Text(label,
                  style: context.labelStyle
                      .copyWith(fontSize: 10, fontWeight: FontWeight.w700))
        ],
      ),
    );
  }
}
