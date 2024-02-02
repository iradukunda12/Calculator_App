import 'package:calculate/Screens/home_screen/homescreen.dart';
import 'package:calculate/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CALCULATOR APP',
      theme: ThemeData(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme.apply(
                fontFamily: 'Montserrat',
                bodyColor: kSecondaryColor,
              ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
