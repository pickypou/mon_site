import 'package:flutter/material.dart';
import 'package:mon_site/theme.dart';

import 'landing-home/landing_home.dart';
import 'landing-home/show_more_button.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    return  MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,

      title: 'SPYSSCHAERT Ludovic',
      home: Scaffold(

        body: SingleChildScrollView(

          controller: controller,
          child: Stack(
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  LandingHome(),
                ],
              ),
              ShowMoreButton(scrollController: controller),
            ],
          ),
        )
      ),
    );
  }
}
