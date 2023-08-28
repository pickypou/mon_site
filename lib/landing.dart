import 'package:flutter/material.dart';
import 'package:mon_site/theme.dart';
import 'package:mon_site/ui/common/landing_page/landing-home/landing_home.dart';
import 'package:mon_site/ui/common/landing_page/landing-home/show_more_button.dart';
import 'package:freelance/extensions/context_extensions.dart';
import 'package:mon_site/size_extensions.dart';
import 'package:mon_site/ui/common/landing_page/more_infos/more_infos.dart';


class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    Size size = MediaQuery.sizeOf(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mon site entreprise",
      theme: theme,
      home: Scaffold(
        body: SingleChildScrollView(
          controller: controller,
          child:  Stack(
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  LandingHome(),
                  MoreInfos(),
                ],
              ),
              ShowMoreButton(scrollController: controller,),
            ],
          ),
        ),
      ),
    );
  }
}
