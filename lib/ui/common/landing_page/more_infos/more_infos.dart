import 'package:flutter/material.dart';
import 'package:mon_site/size_extensions.dart';
import 'package:mon_site/ui/common/landing_page/more_infos/cards-Info.dart';
import 'package:freelance/extensions/context_extensions.dart';
import 'package:mon_site/ui/common/landing_page/more_infos/certificat.dart';
import 'package:mon_site/ui/common/landing_page/more_infos/portfolio.dart';
import 'orientation_stack.dart';


class MoreInfos extends StatelessWidget {
  const MoreInfos({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = context.mediaSize;
    SizeOrientation orientation = size.orientation();

    return Container(
      width: size.width,

      child: OrientedStack(
        orientation: orientation,
        children: const [
          Portfolio(),
          CardInfos(),


        ],

      ),
    );



  }
}
