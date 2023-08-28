import 'package:flutter/material.dart';
import 'package:mon_site/ui/common/landing_page/more_infos/oriented_size_box.dart';
import 'package:freelance/extensions/context_extensions.dart';
import 'orientation_stack.dart';

class CardInfos extends StatelessWidget {
  const CardInfos({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = context.mediaSize;
    return Container(
        color: Colors.grey[800],
        width: size.width,
        height: size.height/1.5,
        child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side:
                      const BorderSide(color: Colors.orangeAccent, width: 1.5)),
              color: Colors.grey[800]?.withOpacity(0.7),
    child: const Padding(
    padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "MON PARCOURS",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 30,
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Après avoir appris seul sur Youtube et Udemy je me suis lancé dans plusiuers"
                    " formations de développeur Web & Web mobile, certaines certifiantes et d'autre diplomantes"
                    " comme Apple Foudation via symplon ou un certificat Opquast via 26 Academy."
                    " A la suite d'une formation développeur full stack chez Studi j'ai obtenu le diplôme de niveau 5"
                    " (bac+2) en développement Web & Web mobile."
                    " Aujourd'hui je suis installé comme auto-entrepreneur",
                    style: TextStyle(
                        fontFamily: "Lato",
                        fontSize: 20,
                        height: 1.5,
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.w200),
                  )
                ],
              ),
            ),
        ),
        ),
    );
  }
}
