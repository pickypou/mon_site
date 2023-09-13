import 'package:flutter/material.dart';
import 'package:mon_site/size_extensions.dart';
import 'package:mon_site/ui/common/landing_page/contact/my_contact.dart';
import 'package:freelance/extensions/context_extensions.dart';
import '../more_infos/orientation_stack.dart';


class Contact extends StatelessWidget {
  const Contact ({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = context.mediaSize;
    SizeOrientation orientation = size.orientation();

    return Container(
      width: size.width,

      child: OrientedStack(
        orientation: orientation,
        children: const [
          MyContact(),



        ],

      ),
    );



  }
}
