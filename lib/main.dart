// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:low_calories_app/pages/Body_data/Age_screen.dart';
import 'package:low_calories_app/pages/Body_data/Gender_screen.dart';
import 'package:low_calories_app/pages/Body_data/Height_screen.dart';
import 'package:low_calories_app/pages/Body_data/Sensitivities_screen.dart';
import 'package:low_calories_app/pages/Body_data/Weight_screen.dart';
import 'package:low_calories_app/pages/Create%20account/Create_Account.dart';
import 'package:low_calories_app/pages/Create%20account/Legal_And_Policies.dart';
import 'package:low_calories_app/pages/Create%20account/Verification.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:low_calories_app/pages/Home/HomePage.dart';
import 'package:low_calories_app/pages/Home/Medical_Instructions.dart';
import 'package:low_calories_app/pages/Home/Packages_screen.dart';
import 'package:low_calories_app/pages/Home/Pay_Now.dart';
import 'package:low_calories_app/pages/Home/Single_Chat_Screen.dart';
import 'package:low_calories_app/pages/Login/Forgot_your_password.dart';
import 'package:low_calories_app/pages/Login/LoginVerification.dart';
import 'package:low_calories_app/pages/Login/Login_screen.dart';
import 'package:low_calories_app/pages/Login/New_Password.dart';
import 'package:low_calories_app/pages/Map_Screen.dart';
import 'package:low_calories_app/pages/NavBar/Custom_NavBar/Articles_Screen/Articles_screen.dart';
import 'package:low_calories_app/pages/NavBar/Custom_NavBar/Articles_Screen/Individual_Article.dart';
import 'package:low_calories_app/pages/NavBar/Custom_NavBar/NavBar.dart';
import 'package:low_calories_app/pages/NavBar/Daily_diet.dart';
import 'package:low_calories_app/pages/NavBar/Meal_data.dart';
import 'package:low_calories_app/pages/NavBar/Notifications.dart';
import 'package:low_calories_app/pages/NavBar/Settings/Change_Password_Screen.dart';
import 'package:low_calories_app/pages/NavBar/Settings/Dashboard/DashboardScreen.dart';
import 'package:low_calories_app/pages/NavBar/Settings/ForgotYourPasswordSettings.dart';
import 'package:low_calories_app/pages/NavBar/Settings/Help_And_Support.dart';
import 'package:low_calories_app/pages/NavBar/Settings/Legal_And_Policies_Settings.dart';
import 'package:low_calories_app/pages/NavBar/Settings/My_Address/Change_Address_Screen.dart';
import 'package:low_calories_app/pages/NavBar/Settings/My_Address/My_Address.dart';
import 'package:low_calories_app/pages/NavBar/Settings/My_Address/New_Address_Screen.dart';
import 'package:low_calories_app/pages/NavBar/Settings/My_Payment/Add_New_Payment.dart';
import 'package:low_calories_app/pages/NavBar/Settings/My_Payment/Change_Payment_Screen.dart';
import 'package:low_calories_app/pages/NavBar/Settings/My_Payment/My_Payment_Screen.dart';
import 'package:low_calories_app/pages/NavBar/Settings/NewPasswordSettings.dart';
import 'package:low_calories_app/pages/NavBar/Settings/Physical_Data/PhysicalDataAge.dart';
import 'package:low_calories_app/pages/NavBar/Settings/Physical_Data/PhysicalDataWeight.dart';
import 'package:low_calories_app/pages/NavBar/Settings/Physical_Data/Physical_Data_Height.dart';
import 'package:low_calories_app/pages/NavBar/Settings/Physical_Data/Physical_Data_Sensitivities.dart';
import 'package:low_calories_app/pages/NavBar/Settings/Profile_Settings.dart';
import 'package:low_calories_app/pages/NavBar/Settings/Settings_Screen.dart';
import 'package:low_calories_app/pages/NavBar/Settings/VerificationDeleteAccount.dart';
import 'package:low_calories_app/pages/Onboarding_screen/Onboarding_body.dart';

void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: PackagesScreen(),
          );
        });
  }
}
