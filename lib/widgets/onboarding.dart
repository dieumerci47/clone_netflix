import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  final String titre;
  final String subtitle;
  final String image;

  const Onboarding({
    Key? key,
    required this.titre,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: Image.asset(image, fit: BoxFit.cover)),
        Positioned.fill(
          child: Container(
            color: Colors.black.withOpacity(0.7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  titre,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 37,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
