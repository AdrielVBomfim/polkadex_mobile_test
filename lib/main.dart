import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polkadex_mobile_test/presentation/screens/test_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Polkadex Mobile Test',
      theme:ThemeData(
          cupertinoOverrideTheme:
          const CupertinoThemeData(brightness: Brightness.dark),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
          buttonTheme: const ButtonThemeData(buttonColor: Color(0xFF1C2023)),
          canvasColor: const Color(0xFF2E303C),
          fontFamily: 'WorkSans',
          dialogTheme: const DialogTheme(
            backgroundColor: Color(0xFF2E303C),
          ),
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Color(0xFF2E303C),
            onPrimary: Color(0xFF2E303C),
            surface: Color(0xFF2E303C),
            onSurface: Color(0xFF2E303C),
            primaryVariant: Color(0xFF2E303C),
            secondary: Colors.grey,
            secondaryVariant: Colors.grey,
            onSecondary: Colors.grey,
            background: Color(0xFF2E303C),
            onBackground: Color(0xFF3B4150),
            error: Colors.grey,
            onError: Colors.grey,
          )).copyWith(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
      home: const TestScreen(),
    );
  }
}
