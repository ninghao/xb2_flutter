import 'package:flutter/material.dart';

const primaryColor = Color(0xff6e64ef);
const primaryColorDark = Color(0xff6e64ef);

const secondaryColor = Color(0xfff0d64d);
const secondaryColorDark = Color(0xfff0d64d);

const primaryTextColor = Color(0xff000000);
const primaryTextColorDark = Color(0xffb1b1b1);

const secondaryTextColor = Color(0xff585858);
const secondaryTextColorDark = Color(0xff585858);

const primaryBackgroundColor = Colors.white;
const primaryBackgroundColorDark = Color(0xff222222);

// 图标主题
const iconTheme = IconThemeData(
  color: Colors.black,
);

const iconThemeDark = IconThemeData(
  color: secondaryTextColorDark,
);

class AppTheme {
  // 亮色主题
  static ThemeData light = ThemeData(
    primaryColor: primaryColor,
    accentColor: secondaryColor,
    colorScheme: ColorScheme.light(
      primary: primaryColor,
      secondary: secondaryColor,
    ),
    scaffoldBackgroundColor: primaryBackgroundColor,
    iconTheme: iconTheme,
  );

  // 暗色主题
  static ThemeData dark = ThemeData(
    primaryColor: primaryColorDark,
    accentColor: secondaryColorDark,
    colorScheme: ColorScheme.dark(
      primary: primaryColorDark,
      secondary: secondaryColorDark,
    ),
    scaffoldBackgroundColor: primaryBackgroundColorDark,
    iconTheme: iconThemeDark,
  );
}
