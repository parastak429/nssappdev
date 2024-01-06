import 'package:flutter/material.dart';
import 'package:paras_s_application1/presentation/sign_up_1_screen/sign_up_1_screen.dart';
import 'package:paras_s_application1/presentation/sign_up_two_screen/sign_up_two_screen.dart';
import 'package:paras_s_application1/presentation/sign_up_three_screen/sign_up_three_screen.dart';
import 'package:paras_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String signUp1Screen = '/sign_up_1_screen';

  static const String signUpTwoScreen = '/sign_up_two_screen';

  static const String signUpThreeScreen = '/sign_up_three_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        signUp1Screen: SignUp1Screen.builder,
        signUpTwoScreen: SignUpTwoScreen.builder,
        signUpThreeScreen: SignUpThreeScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SignUp1Screen.builder
      };
}
