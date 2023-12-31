import 'package:flutter/material.dart';
import 'package:marmita_express/app/shared/utils/others/themes/constants.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    primaryColorLight: kPrimaryColorLight,
    primaryColorDark: kPrimaryColorDark,
    secondaryHeaderColor: kblue,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: kblue, foregroundColor: kLight),
    indicatorColor: kPrimaryColor,
    chipTheme: ChipThemeData(backgroundColor: kLightGrey),
    scaffoldBackgroundColor: kLight,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: kPrimaryColor,
      elevation: kElevation,
    ),
    cardTheme: const CardTheme(
      color: Colors.white, // Defina a cor de fundo dos cards aqui
    ),
    cardColor: kPrimaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: kWhite,
      foregroundColor: kDarkGrey,
      iconTheme: const IconThemeData(
        color: kblue,
      ),
    ),
    iconTheme: IconThemeData(color: klightGrey),
    colorScheme: const ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: kLight,
      elevation: 24,
      selectedItemColor: kPrimaryColor,
      unselectedItemColor: kContentColorLightTheme.withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color: kPrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: darkPrimaryColor,
    primaryColorLight: darkPrimaryColorLight,
    primaryColorDark: darkPrimaryColorDark,
    secondaryHeaderColor: darkblue,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: darkblue, foregroundColor: darkLight),
    indicatorColor: darkPrimaryColor,
    chipTheme: ChipThemeData(backgroundColor: darkLightGrey),
    scaffoldBackgroundColor: darkLight,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: darkPrimaryColor,
      elevation: kElevation,
    ),
    cardTheme: const CardTheme(
      color: darkWhite,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: kDardBlueGrey,
      iconTheme: const IconThemeData(
        color: kblue,
      ),
    ),
    iconTheme: IconThemeData(color: kLight),
    colorScheme: ColorScheme.light(
      primary: darkPrimaryColor,
      secondary: klightGrey,
      error: darkErrorColor,
    ),
    dialogBackgroundColor: kligthBlueGrey,
    inputDecorationTheme: InputDecorationTheme(iconColor: klightGrey),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: kSecondaryColor,
      unselectedIconTheme: IconThemeData(color: kLight),
      unselectedLabelStyle: TextStyle(color: kLight),
      unselectedItemColor: kLight,
      selectedIconTheme: const IconThemeData(color: kSecondaryColor),
      showUnselectedLabels: true,
    ),
  );
}
