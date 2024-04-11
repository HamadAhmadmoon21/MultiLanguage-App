import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../consts/text_style.dart';

class NotificationSetting extends StatefulWidget {
  const NotificationSetting({super.key});

  @override
  State<NotificationSetting> createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  bool _updates=false;
  bool _notification=true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            const  CircleAvatar(
                backgroundColor: Color(0xff309CFF),
                radius: 13,
                child:  Icon(
                  Icons.notifications,
                  size: 18,
                  color: Colors.white,
                )),
            const SizedBox(
              width: 12,
            ),
            Text(
                'notification'.tr,
                style:settingType
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                'notification'.tr,
                style: settingText
            ),
            Transform.scale(
              scale: 0.7,
              child: Switch(
                  activeTrackColor:Colors.grey.shade300  ,

                  activeColor:const Color(0xff309CFF),
                  value: _notification,
                  onChanged: (val) {
                    setState(() {
                      _notification=!_notification;
                    });
                  }),
            )
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                'update'.tr,
                style: settingText
            ),
            Transform.scale(
              scale: 0.7,
              child: Switch(
                  activeTrackColor:Colors.grey.shade300  ,

                  activeColor:const Color(0xff309CFF),
                  value: _updates,
                  onChanged: (val) {
                    setState(() {
                      _updates=!_updates;
                    });
                  }),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
