import 'package:flutter/material.dart';

import '../../consts/text_style.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const CircleAvatar(
          backgroundColor: Colors.grey,
          radius: 60,
          backgroundImage: AssetImage('assets/profile.jpeg'),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hamad Ahmad', style: nameStyle),
            Text('Islamabad', style: addressTextStyle),
            Text('since 2022', style: joinDateStyle),
          ],
        )
      ],
    );
  }
}
