import 'package:flutter/material.dart';

abstract class AppColors {
  static Color white = const Color(0xffFFFFFF);
  static Color black = const Color(0xff000000);
  static Color orange = const Color(0xff132137);
  static Color lightOrange = const Color(0xffF7EBE1);
  static List<Color> buttonGradient = const <Color>[
    Color.fromARGB(255, 255, 242, 235),
    Color.fromARGB(255, 255, 171, 102),
  ];
  static List<Color> backgroundGradient = <Color>[
    AppColors.lightOrange,
    AppColors.white,
  ];
  static List<Color> homeShadowGradient = <Color>[
    AppColors.lightOrange,
    AppColors.white,
  ];
}

abstract class PrimaryButtonProperties {
  static double height = 58;
  static TextStyle textStyle = TextStyle(
    fontSize: 18,
    color: AppColors.white,
  );
  static BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(38.0),
    color: AppColors.orange,
  );
}

abstract class PrimaryButtonIconProperties {
  static double height = 58;
  static double width = 258;
  static TextStyle textStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
  );
  static Color iconColor = AppColors.white;
  static BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    color: AppColors.orange,
  );
}

abstract class FloatingButtonProperties {
  static double size = 56;
  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.orange,
  );
  static Color iconColor = AppColors.orange;
  static BoxDecoration boxDecoration = BoxDecoration(
    boxShadow: kElevationToShadow[6],
    borderRadius: BorderRadius.circular(16),
    color: AppColors.white,
  );
}

abstract class AppBackgroundProperties {
  static BoxDecoration boxDecoration = BoxDecoration(
    color: AppColors.lightOrange,
  );
}

abstract class ModalDecorationProperties {
  static TextStyle bookTitle = const TextStyle(fontSize: 22);
  static TextStyle bookAuthor = TextStyle(
    fontSize: 16,
    color: AppColors.lightOrange,
  );
  static RoundedRectangleBorder modalBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
    side: BorderSide(color: AppColors.orange),
  );
  static BoxDecoration boxDecoration = BoxDecoration(
    color: AppColors.lightOrange,
  );
}

abstract class DisplayTextProperties {
  static TextStyle textStyle =
      const TextStyle(fontFamily: "Roboto Serif Extra Bold", fontSize: 24);
}

abstract class EntryDecorationProperties {
  static TextStyle displayText = const TextStyle(fontSize: 16);
  static TextStyle authorText =
      TextStyle(fontWeight: FontWeight.w500, color: AppColors.lightOrange);
}

abstract class InputDecorationProperties {
  static TextStyle textDecoration = TextStyle(color: AppColors.orange);

  static InputDecoration newInputDecoration(String hintText, String labelText,
      [Icon? icon]) {
    return InputDecoration(
      prefixIcon: icon,
      filled: true,
      prefixIconColor: AppColors.orange,
      hintStyle: TextStyle(color: AppColors.orange),
      hintText: hintText,
      fillColor: AppColors.white,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.lightOrange,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.orange,
        ),
      ),
      labelText: labelText,
    );
  }
}

abstract class HomeShadowProperties {
  static BoxDecoration boxDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.center,
      end: Alignment.bottomCenter,
      colors: AppColors.homeShadowGradient,
    ),
  );
}
