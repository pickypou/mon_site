import 'package:flutter/material.dart';
import 'package:mon_site/size_extensions.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:freelance/extensions/context_extensions.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = context.mediaSize;

    final List<String> imagePaths = [
      "assets/images/judo.png",
      "assets/images/photo-cantin.png",
      "assets/images/mon-cv.png",
      "assets/images/jeu-de-des.png",
      // Add other image paths here
    ];

    final List<Uri> websiteUrls = [
      Uri.parse("https://judoseclin.fr/"), // Replace with actual website URLs
      Uri.parse("https://photographe-cantin.netlify.app"),
      Uri.parse("https://spysschaert-ludovic.netlify.app"),
      Uri.parse("https://jeu-de-des-js.netlify.app"),
      // Add other website URLs here
    ];

    return
      Container(
      color: Colors.grey[800],
      width: size.width,
      height: size.headerHeight() ,
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
                const Text(
                  "PORTFOLIO",
                  style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 30,
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 25,
                ),
                Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 10,
                  runSpacing: 9,
                  children: [
                    for (int i = 0; i < imagePaths.length; i++)
                      GestureDetector(
                        onTap: () async {
                          if (await launchUrl(websiteUrls[i] as Uri)) {
                            // Successfully launched the URL
                          } else {
                            // Failed to launch the URL
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                content: Text("Failed to open the website."),
                            ));
                          }
                        },
                        child: Image.asset(
                          imagePaths[i],
                          width: size.width / 5.5,
                          height: size.height / 5,
                          fit: BoxFit.cover,
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
