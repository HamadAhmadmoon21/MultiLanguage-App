import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileItem extends StatelessWidget {
  final String text;
  final String imagePath;
  const ProfileItem({super.key, required this.text, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              height: 30,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              text,
              style:
                  GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
