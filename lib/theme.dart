import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

ThemeData theme = ThemeData(
  secondaryHeaderColor: Colors.orangeAccent,
    scaffoldBackgroundColor: Colors.grey[800]
);
MarkdownStyleSheet getMDTheme(BuildContext context, Color fontColor)=>
    MarkdownStyleSheet(
      p: Theme.of(context).textTheme.headlineLarge?.copyWith(
        color: fontColor,
      ),
      h1: Theme.of(context).textTheme.headlineLarge?.copyWith(
        color: fontColor,
        fontFamily: "Roboto",
        height: 2,
      ),
      h2: Theme.of(context).textTheme.headlineLarge?.copyWith(
        color: fontColor,
        height: 2,
      ),
      h3: Theme.of(context).textTheme.headlineLarge?.copyWith(
        color: fontColor,
        height: 2,
      ),
      listBullet: Theme.of(context).textTheme.headlineLarge?.copyWith(
        color: fontColor,
      ),
      listBulletPadding: const EdgeInsets.only(top: 10, left: 20),
    );