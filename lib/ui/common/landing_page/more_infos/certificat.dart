
import 'package:flutter/material.dart';
import 'package:freelance/extensions/context_extensions.dart';

class CardCertificats extends StatelessWidget {
  const CardCertificats({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = context.mediaSize;

    final List<String> imagePaths = [
      "assets/images/apple.jpg",
      "assets/images/opquast.jpg",
      // Ajoutez d'autres chemins d'accès d'images ici
    ];

    return Container(
      color: Colors.grey[800],
      width: size.width,
      height: size.height / 1.5,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Colors.orangeAccent, width: 1.5)),
          color: Colors.grey[800]?.withOpacity(0.7),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("MES CERTIFICATS",
                  style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 30,
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.w600),),
                const SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    for (String imagePath in imagePaths)
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),

                        child:
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    child: Container(
                                      width: size.width/4,
                                      height: size.height/4,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(imagePath),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Image.asset(
                              imagePath,
                              width: size.width / 5,
                              height: size.height / 5,
                              fit: BoxFit.cover,
                            ),
                          ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

