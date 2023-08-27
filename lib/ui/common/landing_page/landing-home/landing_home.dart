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
            "Développeur web &",
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontSize: 45,
                color: Colors.orangeAccent,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Text(
            "web mobile",
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontSize: 45,
                color: Colors.orangeAccent,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          const SizedBox(height: 155,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height /2,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/ludo.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
