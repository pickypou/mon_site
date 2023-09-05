import 'package:flutter/material.dart';
import 'package:mon_site/theme.dart';
import 'package:mon_site/ui/common/landing_page/landing-home/landing_home.dart';
import 'package:mon_site/ui/common/landing_page/landing-home/show_more_button.dart';
import 'package:freelance/extensions/context_extensions.dart';
import 'package:mon_site/size_extensions.dart';
import 'package:mon_site/ui/common/landing_page/more_infos/more_infos.dart';
import 'package:mon_site/ui/common/landing_page/more_infos/orientation_stack.dart';
import 'package:mon_site/ui/common/landing_page/more_infos/oriented_size_box.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    final size = MediaQuery.sizeOf(context);
    final isLandscape = size.orientation() == SizeOrientation.paysage;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mon site entreprise",
      theme: theme,
      home: Scaffold(
        body: SingleChildScrollView(
          controller: controller,
          child: Column(
            children: [
              const LandingHome(),
              OrientedStack(
                orientation: size.orientation(),
                children: [
                  if (isLandscape)
                    OrientedSizedBox(
                      size: size,
                      fraction: 1/3,
                      child: const MoreInfos(),
                    )
                  else
                    const MoreInfos(),

                ],
              ),
            ],
          ),
        ),
      ), ShowMoreButton(scrollController: controller,),
    );
  }
}
