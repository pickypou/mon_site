import 'package:flutter/material.dart';
import 'package:freelance/extensions/context_extensions.dart';
import 'package:freelance/widgets/components/forms/input_text.dart';
import 'package:mon_site/size_extensions.dart';

class MyContact extends StatelessWidget {
  const MyContact({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = context.mediaSize;
    return Container(
        color: Colors.grey[800],
        width: size.width,
        height: size.headerHeight(),
        child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                        color: Colors.orangeAccent, width: 1.5)),
                color: Colors.grey[800]?.withOpacity(0.7),
                child:  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "CONTACT",
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 30,
                                color: Colors.orangeAccent,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          TextField(

                            keyboardType: TextInputType.emailAddress,
                            style: const TextStyle(
                              color: Colors.orangeAccent, // Couleur du texte saisi
                            ),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white10,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.0),
                                borderSide: const BorderSide(
                                  color: Colors.orangeAccent, // Couleur de la bordure
                                ),
                              ),
                            ),
                          )


                        ]
                    )
                )
            )
        )
    );
  }
}
