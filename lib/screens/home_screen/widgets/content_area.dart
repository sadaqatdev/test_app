import 'package:flutter/material.dart';

import 'package:streamedinc/screens/chat/chat_screen.dart';
import 'package:streamedinc/theme/colors.dart';
import 'package:streamedinc/theme/theme_ext.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Positioned(
      left: 20,
      bottom: 20,
      child: SizedBox(
        width: size.width * 0.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "MacBook Air 2013",
              style: context.titleStyle
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "AED 1,200",
              style: context.titleStyle.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: orangeColor),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit... #Lorem #ipsum #amet",
              style: context.labelStyle
                  .copyWith(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const Image(
                  image: AssetImage("assets/images/uae_flag.png"),
                  height: 25,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text("Dubai, United Arab Emirates",
                    style: context.labelStyle
                        .copyWith(fontSize: 13, fontWeight: FontWeight.w600))
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChatScreen()));
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                decoration: BoxDecoration(
                    gradient: gradientPrimary,
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  "Visit Website",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
