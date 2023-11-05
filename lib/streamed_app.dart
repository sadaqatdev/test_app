import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:streamedinc/screens/bottomnav/bottom_nav.dart';
import 'package:streamedinc/screens/bottomnav/provider/bottom_nav_provider.dart';
import 'package:streamedinc/theme/app_theme.dart';

class StreamedApp extends StatelessWidget {
  const StreamedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BottomNavProvider(),
      child: MaterialApp(
        title: 'StreamedInc',
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        home: const BottomNav(),
      ),
    );
  }
}
