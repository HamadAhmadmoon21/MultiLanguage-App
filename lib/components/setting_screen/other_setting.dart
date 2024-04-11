import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../consts/text_style.dart';

class OtherSetting extends StatefulWidget {
  const OtherSetting({super.key});

  @override
  State<OtherSetting> createState() => _OtherSettingState();
}

class _OtherSettingState extends State<OtherSetting> {
  bool _darkMode = false;
  String _language = 'English';
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
              'assets/othersetting.png',
              height: 30,
            ),
            const SizedBox(
              width: 12,
            ),
            Text('other'.tr, style: settingType)
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('darkMode'.tr, style: settingText),
            Transform.scale(
              scale: 0.7,
              child: Switch(
                  activeTrackColor: Colors.grey.shade300,
                  activeColor: const Color(0xff309CFF),
                  value: _darkMode,
                  onChanged: (val) {

                    Get.changeThemeMode(
                      Get.isDarkMode?
                          ThemeMode.light:
                          ThemeMode.dark
                    );
                   //app theme
                    setState(() {
                      _darkMode = !_darkMode;
                    });
                  }),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'language'.tr,
              style: settingText,
            ),
            GestureDetector(
                onTap: () {
                  _showLanguageDialog();
                },
                child: Container(
                  height: 23,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Text(_language,style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Colors.grey.shade500),),
                ))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('region'.tr, style: settingText),
            Container(
                height: 23,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Center(
                  child: Text(
                    'US',
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.grey.shade500),
                  ),
                ))
          ],
        ),
       const SizedBox(
          height: 10,
        ),
      ],
    );
  }

    void _showLanguageDialog(){
    showDialog(
        context: context,
        builder: (BuildContext  context){
          return Dialog(

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Select Language',style: GoogleFonts.lato(
                    fontSize:18,fontWeight:FontWeight.bold
                  ),),
                  SizedBox(height: 16,),
                  _buildLanguageItem(context, '🇺🇸', 'English', 'en'),
                  _buildLanguageItem(context, '🇵🇰', 'Urdu', 'ur'),
                  _buildLanguageItem(context, '🇪🇸', 'Spanish', 'es'),
                  _buildLanguageItem(context, '🇫🇷', 'French', 'fr'),
                  _buildLanguageItem(context, '🇩🇪', 'German', 'de'),

                ],
              ),
            ),
          );
    }
    );
    }


    Widget _buildLanguageItem(
        BuildContext context,String flag,String name,String code
        ){

    return GestureDetector(
      onTap: (){
        _language=name;
        Get.updateLocale(Locale(code));//this code will switch our App language
        Navigator.of(context).pop();
      },
      child: Column(
        children: [
          Row(
            children: [
              Text(flag,style: TextStyle(fontSize: 24),),
              SizedBox(width: 12,),
              Text(name,style: GoogleFonts.lato(
                fontSize:16,fontWeight:FontWeight.bold
              ),)
            ],
          ),
          const Divider()
        ],
      ),
    );
    }

}
