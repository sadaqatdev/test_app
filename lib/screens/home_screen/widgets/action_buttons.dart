import 'package:flutter/material.dart';
import 'package:streamedinc/screens/widgets/snakbar_widget.dart';
import 'package:streamedinc/theme/theme_ext.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 40,
      right: 20,
      child: Column(
        children: [
          const ActionTile(
              lable: "Offers", imgIcon: "assets/images/offers.png"),
          const SizedBox(
            height: 20,
          ),
          ActionTile(
            lable: "4.5K",
            imgIcon: "assets/images/like.png",
            onTap: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          const ActionTile(lable: "1.2K", imgIcon: "assets/images/comment.png"),
          const SizedBox(
            height: 20,
          ),
          const ActionTile(lable: "77", imgIcon: "assets/images/share.png"),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          const Image(
            image: AssetImage("assets/images/profile.png"),
            height: 45,
          ),
        ],
      ),
    );
  }
}

class ActionTile extends StatelessWidget {
  const ActionTile(
      {super.key, required this.lable, required this.imgIcon, this.onTap});

  final String lable;
  final String imgIcon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  gradient: const LinearGradient(colors: [
                    Color(0xff00FFE2),
                    Color(0xff2871BB),
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
              child: Image(
                image: AssetImage(imgIcon),
                height: 45,
              )),
          const SizedBox(
            height: 4,
          ),
          Text(
            lable,
            style: context.labelStyle.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
