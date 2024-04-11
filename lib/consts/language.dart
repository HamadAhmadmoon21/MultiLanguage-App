

import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations{

  @override
  Map<String,Map<String,String>> get keys=>{

    //english language
    'en_US':{
      'setting':'Settings',
      'account':"Account",
      'editProfile':'Edit Profile',
      'changePassword':'Change Password',
      'privacy':'Privacy',
      'notification':'Notification',
      'update':'Updates',
      'other':'Other',
      'darkMode':'Dark Mode',
      'language':'Languages',
      'region':'Region'
    },

    //urdu language

    'ur_PK':{
      'setting':'ترتیبات',
      'account':"کھاتہ",
      'editProfile':'پروفائل میں ترمیم کریں',
      'changePassword':'پاس ورڈ تبدیل کریں',
      'privacy':'رازداری',
      'notification':'اطلاع',
      'update':'تازہ ترین',
      'other':'دیگر',
      'darkMode':'ڈارک موڈ',
      'language':'زبانیں',
      'region':'علاقہ'
    },

    //spanish

    'es_ES':{
      'setting':'configuración',
      'account':"cuenta",
      'editProfile':'Editar perfil',
      'changePassword':'cambiar la contraseña',
      'privacy':'privacidad',
      'notification':'notificación',
      'update':'Actualizar',
      'other':'Otra',
      'darkMode':'Modo oscuro',
      'language':'Idioma',
      'region':'Región'
    },

    //french

    'fr_FR':{
      'setting':'Paramètre',
      'account':"Compte",
      'editProfile':'Editer le profil',
      'changePassword':'Changer le mot de passe',
      'privacy':'Confidentialité',
      'notification':'Notification',
      'update':'Mise à jour',
      'other':'Autre',
      'darkMode':'Mode sombre',
      'language':'Langue',
      'region':'Région'
    },

    //German

    'de_DE':{
      'setting':'Einstellung',
      'account':"Konto",
      'editProfile':'Profil bearbeiten',
      'changePassword':'Kennwort ändern',
      'privacy':'Privatsphäre',
      'notification':'Benachrichtigung',
      'update':'Aktualisieren',
      'other':'Andere',
      'darkMode':'Dunkler Modus',
      'language':'Sprache',
      'region':'Region'
    },

    //if you need and want more language you can add  here

  };
}