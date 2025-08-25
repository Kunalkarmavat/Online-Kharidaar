import 'package:flutter/material.dart';
import 'package:ok/utils/theme/custom_themes/text_field_theme.dart' as textFieldTheme;
import 'package:ok/utils/theme/custom_themes/text_theme.dart' as textTheme;
import 'package:ok/utils/theme/custom_themes/elevated_button_theme.dart' as elevatedButtonTheme;
import 'package:ok/utils/theme/custom_themes/appbar_theme.dart' as appBarTheme;
import 'package:ok/utils/theme/custom_themes/checkbox_theme.dart' as checkBoxTheme;
import 'package:ok/utils/theme/custom_themes/bottom_sheet_theme.dart' as BottomSheetThemeData;




class OkAppTheme {

  OkAppTheme._();


  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme.OkAppBarTheme.lightAppBarTheme,
    checkboxTheme: checkBoxTheme.OkCheckboxTheme.lightCheckboxTheme,
    textTheme: textTheme.OkTextTheme.lightTextTheme,
    elevatedButtonTheme: elevatedButtonTheme.OkElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: textFieldTheme.OkTextFormFieldTheme.lightInputDecorationTheme,
    bottomSheetTheme: BottomSheetThemeData.OkBottomSheetTheme.lightBottomSheetTheme,
    
    
   
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: appBarTheme.OkAppBarTheme.darkAppBarTheme,
    checkboxTheme: checkBoxTheme.OkCheckboxTheme.darkCheckboxTheme,
    textTheme: textTheme.OkTextTheme.darkTextTheme,
    elevatedButtonTheme: elevatedButtonTheme.OkElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: textFieldTheme.OkTextFormFieldTheme.darkInputDecorationTheme,
    bottomSheetTheme: BottomSheetThemeData.OkBottomSheetTheme.darkBottomSheetTheme,

    
    );  

  
}