import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:streamedinc/screens/widgets/snakbar_widget.dart';
import 'package:streamedinc/theme/colors.dart';
import 'package:streamedinc/theme/theme_ext.dart';
import 'package:streamedinc/utils/assets_paths.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});

  List<String> cameraImages = [
    "assets/images/camera1.png",
    "assets/images/camera2.png",
    "assets/images/camera1.png",
    "assets/images/camera2.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff12305B),
      appBar: AppBar(
        toolbarHeight: 70,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.close,
            color: Colors.white,
          ),
        ),
        titleSpacing: 0,
        title: Row(
          children: [
            const Image(
              image: AssetImage("assets/images/profile.png"),
              height: 50,
              width: 50,
            ),
            const SizedBox(
              width: 14,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Abu Hamza",
                  style: context.titleStyle
                      .copyWith(fontWeight: FontWeight.w700, fontSize: 16),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text("Posted this item for sale",
                    style: context.labelStyle.copyWith(
                        color: const Color(0xffBDBDBD),
                        fontSize: 13,
                        fontWeight: FontWeight.w400)),
              ],
            )
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          )
        ],
        backgroundColor: primaryColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Container(
                      width: 70,
                      padding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 8),
                      decoration: BoxDecoration(
                          color: const Color(0xff2A2B39),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text("Today",
                            style: context.labelStyle.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xffBDBDBD))),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 50, bottom: 22),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Text(
                            "I am interested to buy your product with counter offer?",
                            style: context.bodyStyle.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: primaryColor),
                            maxLines: 2,
                          ),
                        ),
                        Text(
                          "10:20",
                          style: context.labelStyle.copyWith(
                              color: const Color(0xff71839D),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 15,
                    ),
                    decoration: const BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Counter Offer",
                          style: context.labelStyle.copyWith(
                              color: const Color(0xff3CFEDE),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Container(
                          height: 150,
                          margin: const EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                  image:
                                      AssetImage("assets/images/macbook.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Text(
                          "DSLR NIKON 520D with 18mm Lense",
                          style: context.labelStyle.copyWith(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              "Location:",
                              style: context.labelStyle.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            ),
                            Text(
                              " Bur Dubai, United Arab Emirates",
                              style: context.labelStyle.copyWith(
                                  color: Color(0xff3CFEDE),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Text(
                              "Offered:",
                              style: context.labelStyle.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            ),
                            Text(
                              " \$1200 + 200 Saltaries + Product",
                              style: context.labelStyle.copyWith(
                                  color: Color(0xff3CFEDE),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 23,
                        ),
                        SizedBox(
                          height: 100,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              ...cameraImages
                                  .map((e) => Container(
                                        height: 100,
                                        width: 100,
                                        margin: const EdgeInsets.only(right: 5),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(e))),
                                      ))
                                  .toList()
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 23,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  context.showSnackBar(msg: "Reject Tapped");
                                },
                                child: Container(
                                  height: 50,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffF75555),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Text(
                                    "Reject",
                                    style: context.labelStyle.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  context.showSnackBar(msg: "Accept Tapped");
                                },
                                child: Container(
                                  height: 50,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      gradient: gradientInverse,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Text(
                                    "Accept",
                                    style: context.labelStyle.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 80,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            color: primaryColor,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xff12305B),
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            style: TextStyle(
                                color: Colors.grey.withOpacity(0.8),
                                fontWeight: FontWeight.w500),
                            decoration: const InputDecoration.collapsed(
                              hintText: "Type Message...",
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            context.showSnackBar(msg: "Camera Tapped");
                          },
                          child: SvgPicture.asset(
                            cameraSVG,
                            height: 25,
                            width: 25,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            context.showSnackBar(msg: "Location Tapped");
                          },
                          child: SvgPicture.asset(
                            locationSVG,
                            height: 25,
                            width: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                    onTap: () {
                      context.showSnackBar(msg: "Send Tapped Tapped");
                    },
                    child: const Image(
                      image: AssetImage("assets/images/send.png"),
                      height: 50,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
