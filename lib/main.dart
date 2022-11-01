import 'package:flutter/material.dart';
import 'package:epic_music/style/appColors.dart';
import 'package:epic_music/ui/homePage.dart';

main() async {
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: "DMSans",
        accentColor: accent,
        primaryColor: accent,
        canvasColor: Colors.transparent,
      ),
      home: epicmusic(),
    ),
  );
}
