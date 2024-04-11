import 'package:flutter/material.dart';
import 'package:multi_language_app/components/profile_screen/profile_item.dart';

import '../../screens/setting_screen.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfileItem(
            text: 'Your Favorite', imagePath: 'assets/favorite.png'),
        const ProfileItem(text: 'Payment', imagePath: 'assets/payment.png'),
        const ProfileItem(
            text: 'Tell Your Friends', imagePath: 'assets/send.png'),
        const ProfileItem(
            text: 'Promotions', imagePath: 'assets/promotion.png'),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>const SettingScreen(image: 'assets/profile.jpeg')));

          },
          child: const ProfileItem(
              text: 'Settings', imagePath: 'assets/setting.png'),
        ),
        const ProfileItem(text: 'Log Out', imagePath: 'assets/logout.png'),
      ],
    );
  }
}
