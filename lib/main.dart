import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:techblog/component/my_colors.dart';
import 'package:techblog/view/home_screen.dart';
import 'package:techblog/view/main_screen.dart';
import 'package:techblog/view/my_cats.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: SolidColors.statusBarColor,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: SolidColors.systemNavigationBarColor,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
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
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(width: 2),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(

            textStyle: WidgetStateProperty.resolveWith(
              (states) {
                if (states.contains(WidgetState.pressed)) {
                  return const TextStyle(fontSize: 25, color: Colors.white);
                }
                return const TextStyle(fontSize: 20, color: Colors.white);
              },
            ),
            backgroundColor: WidgetStateProperty.resolveWith(
              (states) {
                if (states.contains(WidgetState.pressed)) {
                  return SolidColors.primaryColor;
                }
                return SolidColors.primaryColor;
              },
            ),
          ),
        ),
        fontFamily: "vazir",
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
              fontFamily: 'vazir',
              fontWeight: FontWeight.w800,
              fontSize: 17,
              color: Colors.black),
          bodyLarge: TextStyle(
              fontFamily: 'vazir',
              fontWeight: FontWeight.w800,
              fontSize: 17,
              color: SolidColors.seeMore),
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
          headlineSmall: TextStyle(
              fontFamily: 'vazir',
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: SolidColors.posterTitle),
          titleSmall: TextStyle(
              fontFamily: 'vazir',
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: SolidColors.posterSubTitle),
          bodyMedium: TextStyle(
              fontFamily: 'vazir',
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: Color(0xFF707070)),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
