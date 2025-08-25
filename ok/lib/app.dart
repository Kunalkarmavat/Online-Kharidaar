import 'package:flutter/material.dart';
// import 'package:get/get_core/get_core.dart';
import 'package:get/route_manager.dart';
import 'package:ok/features/authentication/screens/login/login.dart';
import 'package:ok/utils/theme/theme.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: OkAppTheme.lightTheme,
      darkTheme: OkAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home:   LoginScreen(), // Change this to your initial screen 
     
    );
  }
}
