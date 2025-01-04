import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/user.dart';
import 'package:flutter_application_1/utils/home.dart';
import 'package:flutter_application_1/view/choose_lang.dart';
import 'package:flutter_application_1/view/home.dart';
import 'package:flutter_application_1/view/on_boarding.dart';
import 'package:flutter_application_1/view/settings.dart';
import 'package:flutter_application_1/view/chat_bott.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'functions/functions.dart';

import 'services/languages.dart';
import 'utils/chat_bot_binding.dart';
import 'utils/choose_language_binding.dart';
import 'utils/settings.dart';
import 'utils/sign_in_binding.dart';
import 'view/sign_in.dart';
///
import 'package:flutter_application_1/screens/home_diabet';
import 'package:flutter_application_1/screens/home_treatment';
import 'package:flutter_application_1/screens/home_PhysicalActivity.dart';
import 'package:flutter_application_1/screens/home_food.dart';
import 'package:flutter_application_1/screens/home_blood_sugar';

///

SharedPreferences? sharedPreferences;
UserModel currentUser = UserModel(fname: "", lname: "", image: "");
// bool isPay = false;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: "assets/.env");
  MainFunctions.sharredPrefs = await SharedPreferences.getInstance();
  sharedPreferences = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      title: 'DWA',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      translations: Languages(),
      supportedLocales: const [Locale('en'), Locale('fr')],
      locale: Languages.initLang(),
      getPages: [
        GetPage(
          name: "/SignIn",
          page: () => const SignIn(),
          binding: SignInBinding(),
        ),
        GetPage(
          name: "/Home",
          page: () => const Home(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: "/Settings",
          page: () => const Settingss(),
          binding: SettingsBinding(),
        ),
        GetPage(
          name: "/Bording",
          page: () => const OnBoarding(),
        ),
        GetPage(
          name: "/ChatBot",
          page: () => const ChatBott(),
          binding: ChatBotBinding(),
        ),
        GetPage(
          name: "/test",
          page: () =>  const ChatBott(),
        ),
        
        GetPage(
          name: "/Diabet",
          page: () =>  const Diabet(),
        ),
        GetPage(
          name: "/Treatment",
          page: () =>  const Treatment(),
        ),
        GetPage(
          name: "/home_PhysicalActivity",
          page: () => const PhysicalActivity(), 
        ),
        GetPage(
          name: "/home_food",
          page: () => const OpenFoodPage(), 
        ),
        GetPage(
          name: "/home_blood_sugar",
          page: () => const BloodSugar(), 
        ),
        GetPage(
          name: "/",
          page: () => const ChooseLanguage(),
          binding: ChooseLanguageBinding(),
        ),
      ],
      initialRoute: "/Bording",
      
    );
  }
}
