import 'package:flutter/material.dart';

class ThemeVariables {
  static const double kDefaultPadding = 24.0;
  static const double kSmallPadding = 8.0;

  static const double kDefaultIconSize = 28;

  static const double fontSizeXXXXL = 60;
  static const double fontSizeXXXL = 40;
  static const double fontSizeXXL = 36;
  static const double fontSizeXL2 = 30;
  static const double fontSizeXL1 = 28;
  static const double fontSizeXL = 24;
  static const double fontSizeLG2 = 22;
  static const double fontSizeLG = 20;
  static const double fontSizeMed = 18;
  static const double fontSize = 16;
  static const double fontSizeSmall = 14;
  static const double fontSizeSmall1 = 13;
  static const double fontSizeXS = 12;
  static const double fontSizeXXS = 10;

  static const String fontFamilyPoppins = 'Poppins';

  static const Color facebookColor = Color.fromRGBO(61, 90, 152, 1);

  static const Color errorColor = Color.fromRGBO(255, 37, 23, 1);
  static const Color successColor = Color.fromRGBO(4, 224, 136, 1);
  static const Color whiteColor = Color.fromRGBO(255, 255, 255, 1);
  static const Color blackColor = Color.fromRGBO(0, 0, 0, 1);

  static const Color fireBackgroundColor = Color.fromRGBO(252, 243, 235, 1);
  static const Color fireColor = Color.fromRGBO(255, 157, 85, 1);

  static const Color flyingColor = Color.fromRGBO(137, 170, 227, 1);

  static const Color waterBackgroundColor = Color.fromRGBO(235, 241, 248, 1);
  static const Color waterColor = Color.fromRGBO(80, 144, 214, 1);

  // static const Color eletricBackgroundColor = Color.fromRGBO(235, 241, 248, 1);
  static const Color eletricColor = Color.fromRGBO(244, 210, 60, 1);

  static const Color rockColor = Color.fromRGBO(197, 183, 140, 1);

  static const Color grassColor = Color.fromRGBO(99, 188, 90, 1);

  static const Color earthColor = Color.fromRGBO(217, 120, 69, 1);

  static const Color psyColor = Color.fromRGBO(250, 113, 121, 1);

  static const Color iceColor = Color.fromRGBO(115, 206, 192, 1);

  static const Color darkGray = Color.fromRGBO(51, 51, 51, 1);
  static const Color lightGray = Color.fromRGBO(204, 204, 204, 1);
  static const Color mainBlue = Color.fromRGBO(23, 62, 165, 1);
  static const Color mainPink = Color.fromRGBO(255, 117, 150, 1);

  static TextStyle bottomNavigationBarStyle = const TextStyle(
    fontSize: ThemeVariables.fontSizeXS,
    fontWeight: FontWeight.w500,
    fontFamily: fontFamilyPoppins,
  );

  static TextStyle pokemonCardNumber = const TextStyle(
    fontSize: ThemeVariables.fontSizeXS,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamilyPoppins,
    color: darkGray,
  );

  static TextStyle pokemonCardName = const TextStyle(
    fontSize: ThemeVariables.fontSizeLG,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamilyPoppins,
    color: blackColor,
  );

  static TextStyle pokemonCardChipText = const TextStyle(
    fontSize: ThemeVariables.fontSizeXS,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamilyPoppins,
    color: blackColor,
  );

  static TextStyle pokemonDetailsName = const TextStyle(
    fontSize: ThemeVariables.fontSizeXL2,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamilyPoppins,
    color: blackColor,
  );

  static TextStyle pokemonDetailsNumber = TextStyle(
    fontSize: ThemeVariables.fontSize,
    fontWeight: FontWeight.w500,
    fontFamily: fontFamilyPoppins,
    color: blackColor.withOpacity(0.7),
  );

  static TextStyle pokemonDetailsDescription = TextStyle(
    fontSize: ThemeVariables.fontSizeSmall,
    fontWeight: FontWeight.w500,
    fontFamily: fontFamilyPoppins,
    color: blackColor.withOpacity(0.7),
  );

  static TextStyle pokemonDetailsInfoTitle = TextStyle(
    fontSize: ThemeVariables.fontSizeXS,
    fontWeight: FontWeight.w500,
    fontFamily: fontFamilyPoppins,
    color: blackColor.withOpacity(.6),
  );

  static TextStyle pokemonDetailsInfo = TextStyle(
    fontSize: ThemeVariables.fontSize,
    fontWeight: FontWeight.w500,
    fontFamily: fontFamilyPoppins,
    color: blackColor.withOpacity(.9),
  );

  static TextStyle pokemonDetailsGenderPercentage = TextStyle(
    fontSize: ThemeVariables.fontSizeSmall,
    fontWeight: FontWeight.w500,
    fontFamily: fontFamilyPoppins,
    color: blackColor.withOpacity(0.7),
  );

  static TextStyle pokemonDetailsSubTitle = TextStyle(
    fontSize: ThemeVariables.fontSizeMed,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamilyPoppins,
    color: blackColor,
  );

  static TextStyle pokemonDetailsEvolutionStep = TextStyle(
    fontSize: ThemeVariables.fontSizeMed,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamilyPoppins,
    color: mainBlue,
  );
}
