import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../consts/text_style.dart';

class AccountSetting extends StatelessWidget {


  const AccountSetting({super.key,});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Image.asset(
              'assets/profSetting.png',
              height: 30,
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
                'account'.tr,
                style: settingType
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
            'editProfile'.tr,
            style: settingText
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
            'changePassword'.tr,
            style: settingText
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
            'privacy'.tr,
            style: settingText
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}


