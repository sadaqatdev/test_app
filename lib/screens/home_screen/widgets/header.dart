import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:streamedinc/theme/colors.dart';
import 'package:streamedinc/theme/theme_ext.dart';
import 'package:streamedinc/utils/assets_paths.dart';
import 'package:streamedinc/utils/lables_utils.dart';

class AppBarWidgetHome extends StatelessWidget {
  const AppBarWidgetHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 70,
        bottom: 20,
      ),
      child: SizedBox(
        height: 90,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            const SizedBox(
              width: 20,
            ),
            HeaderItemWidget(
              lable: LabelsUtils.addL,
              imgPath: addIcon,
              padding: const EdgeInsets.all(17),
            ),
            HeaderItemWidget(
              lable: LabelsUtils.search,
              imgPath: searchIcon,
              padding: const EdgeInsets.all(15),
            ),
            HeaderItemWidget(
              lable: LabelsUtils.notification,
              imgPath: notificationIcons,
              padding: const EdgeInsets.all(15),
            ),
            HeaderItemWidget(lable: LabelsUtils.electronic, imgPath: wmashine),
            HeaderItemWidget(lable: LabelsUtils.appliances, imgPath: applances),
            HeaderItemWidget(lable: LabelsUtils.mobiles, imgPath: mobiles),
          ],
        ),
      ),
    );
  }
}

class HeaderItemWidget extends StatelessWidget {
  const HeaderItemWidget(
      {super.key,
      required this.lable,
      required this.imgPath,
      this.padding = const EdgeInsets.all(0)});

  final String lable;
  final String imgPath;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    //

    var headerIconLableStyle = context.labelStyle.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 12,
      color: Colors.white,
    );

    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 55,
            width: 55,
            margin: const EdgeInsets.only(
              bottom: 10,
            ),
            padding: padding,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              border: GradientBoxBorder(
                gradient: gradientPrimary,
                width: 2,
              ),
            ),
            child: Center(child: Image(image: AssetImage(imgPath))),
          ),
          Text(lable, style: headerIconLableStyle)
        ],
      ),
    );
  }
}
