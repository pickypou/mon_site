import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:freelance/extensions/context_extensions.dart';

class LandingHome extends StatelessWidget {
  const LandingHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = context.mediaSize;
    double? titleFont = size.width / 10;

    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "SPYSSCHAERT",
            style:GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontSize: 55,
                color: Colors.orangeAccent,
                fontWeight: FontWeight.w400,
              ),
          ),
          ),
          Text(
            "Ludovic",
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontSize: 45,
                color: Colors.orangeAccent,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Text(
            "Développeur web & web mobile",
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontSize: 45,
                color: Colors.orangeAccent,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          const SizedBox(height: 100,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/ludo.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 30),
              const Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            "Après avoir appris seul sur youtube je me suis lancé dans plusieurs "
                                "formations de développeur Web & Web mobile, certaines certifiantes et d'autres diplomantes"
                                " comme Apple Foundation via Simplon ou un certificat Opquast via 26 Academy."
                                "  A la suite d'une formation développeur full stack chez Studi j'ai obtenu le diplôme de niveau "
                                "5 (bac+2) en développement Web et Web mobile."
                                " Aujourd'hui je me suis installé comme auto-entrepreneur ",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}