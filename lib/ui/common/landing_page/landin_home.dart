import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingHome extends StatelessWidget {
  const LandingHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "SPYSSCHAERT",
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontSize: 55,
                color: Colors.orangeAccent,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Text(
            "Ludovic",
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontSize: 50,
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
              const SizedBox(width: 20), // Espace entre l'image et le texte
              const Flexible(child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    children: [
              Padding(
              padding: EdgeInsets.all(16.0), // Ajoutez ici le padding souhaité
                child:
                      Text(
                        "Après avoir appris seul sur youtube je me suis lancer dans plusieurs "
                            " formation de développeur Web & Web mobil certaine certifiante et d'autre diplomante"
                            " comme apple foundation via simplon ou chez 26 accadamy ou j'ai obtenue un certificats opquast"
                            " chez sutdi ou j'ai fait une formation développeur full strack pour l'obtention d'un bac+2 en développement"
                            " Web et Web mobile"
                            " que j'ai réussi avec succé aujoud'huit je me suis installer comme auto-entrepreneur "
                            " ",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
              ),
                    ],
                  ),
                  // Ajoutez d'autres textes si nécessaire
                ],
              ),

              )

            ],
          ),
        ],
      ),
    );
  }
}
