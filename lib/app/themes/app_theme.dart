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

// 文本主题
const textTheme = TextTheme(
  bodyText1: TextStyle(
    color: primaryTextColor,
  ),
  bodyText2: TextStyle(
    color: secondaryTextColor,
  ),
);

const textThemeDark = TextTheme(
  bodyText1: TextStyle(
    color: primaryTextColorDark,
  ),
  bodyText2: TextStyle(
    color: secondaryTextColorDark,
  ),
);

// 应用栏主题
const appBarTheme = AppBarTheme(
  elevation: 1,
  backgroundColor: Colors.white,
  iconTheme: IconThemeData(
    color: Colors.black,
  ),
  textTheme: TextTheme(
    headline6: TextStyle(
      color: Colors.black,
      fontSize: 20,
    ),
  ),
);

const appBarThemeDark = AppBarTheme(
  elevation: 1,
  backgroundColor: Color(0xff2e2e2e),
  iconTheme: IconThemeData(
    color: Colors.grey,
  ),
  textTheme: TextTheme(
    headline6: TextStyle(
      color: Colors.grey,
      fontSize: 20,
    ),
  ),
);

// 标签栏主题
const tabBarTheme = TabBarTheme(
  labelColor: Colors.black,
  indicatorSize: TabBarIndicatorSize.label,
  indicator: BoxDecoration(
    border: Border(
      bottom: BorderSide(
        width: 1,
        color: Colors.black,
      ),
    ),
  ),
);

const tabBarThemeDark = TabBarTheme(
  labelColor: Colors.grey,
  indicatorSize: TabBarIndicatorSize.label,
  indicator: BoxDecoration(
    border: Border(
      bottom: BorderSide(
        width: 1,
        color: Colors.grey,
      ),
    ),
  ),
);

// 底部导航栏主题
const bottomNavigationBarTheme = BottomNavigationBarThemeData(
  elevation: 1,
  showSelectedLabels: true,
  type: BottomNavigationBarType.fixed,
  unselectedItemColor: Colors.black,
  selectedItemColor: primaryColor,
);

final bottomNavigationBarThemeDark = bottomNavigationBarTheme.copyWith(
  unselectedItemColor: Colors.grey,
  selectedItemColor: primaryColorDark,
);

// SnackBar 主题
const snackBarTheme = SnackBarThemeData(
  backgroundColor: Colors.black87,
);

const snackBarThemeDark = SnackBarThemeData(
  backgroundColor: Colors.black87,
  contentTextStyle: TextStyle(
    color: primaryTextColorDark,
  ),
);

// 按钮主题
final elevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    elevation: 0,
    shape: BeveledRectangleBorder(),
  ),
);

final elevatedButtonThemeDark = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    elevation: 0,
    shape: BeveledRectangleBorder(),
  ),
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
    textTheme: textTheme,
    appBarTheme: appBarTheme,
    tabBarTheme: tabBarTheme,
    bottomNavigationBarTheme: bottomNavigationBarTheme,
    snackBarTheme: snackBarTheme,
    elevatedButtonTheme: elevatedButtonTheme,
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
    textTheme: textThemeDark,
    appBarTheme: appBarThemeDark,
    tabBarTheme: tabBarThemeDark,
    bottomNavigationBarTheme: bottomNavigationBarThemeDark,
    snackBarTheme: snackBarThemeDark,
    elevatedButtonTheme: elevatedButtonThemeDark,
  );
}
