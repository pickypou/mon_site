import 'package:flutter/material.dart';
import 'package:mon_site/ui/common/landing_page/landin_home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SPYSSCHAERT Ludovic',
      home: Scaffold(
        body: Container(
          color: Colors.grey[800], // Couleur de fond gris foncé
          child:  const SingleChildScrollView(
            child: Column(
              children: [
                LandingHome(),
              ],
            ),

          ),
        ),
      ),
    );
  }
}
