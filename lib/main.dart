import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_language_app/consts/language.dart';
import 'package:multi_language_app/screens/profile_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   GetMaterialApp(

      locale:const Locale('en','US'),
      fallbackLocale:const Locale('en','US') ,
      translations:Languages() ,

      //theme
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),


      debugShowCheckedModeBanner: false,
      home:const ProfileScreen(),
    );
  }
}
