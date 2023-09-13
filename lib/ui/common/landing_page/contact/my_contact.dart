import 'package:flutter/material.dart';
import 'package:freelance/extensions/context_extensions.dart';
import 'package:mon_site/size_extensions.dart';



class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = context.mediaSize;
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
    child: const Padding(
    padding: EdgeInsets.all(16.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Text(
    "CONTACT",
    style: TextStyle(
    fontFamily: "Roboto",
    fontSize: 30,
    color: Colors.orangeAccent,
    fontWeight: FontWeight.w600),
    ),
    SizedBox(
    height: 25,
    ),






    );
  }
}
