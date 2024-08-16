import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:techblog/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const [Locale('fa')],
      //farsi
      theme: ThemeData(
        fontFamily: "vazir",
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
              fontFamily: 'vazir',
              fontWeight: FontWeight.w800,
              fontSize: 17,
              color: Colors.black),
          bodyLarge: TextStyle(
              fontFamily: 'vazir',
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Colors.black),
          headlineMedium: TextStyle(
              fontFamily: 'vazir',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.white),
          labelMedium: TextStyle(
              fontFamily: 'vazir',
              fontWeight: FontWeight.w800,
              fontSize: 16,
              color: Colors.red),
          labelSmall: TextStyle(
              fontFamily: 'vazir',
              fontWeight: FontWeight.w800,
              fontSize: 16,
              color: Colors.green),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
