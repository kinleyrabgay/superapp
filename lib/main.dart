import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:superbt/core/utils/constants/colors.dart';
import 'package:superbt/src/home/presentation/view/home.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Super App',
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 14.5,
            letterSpacing: 0.5,
            color: SAColors.textColor1,
          ),
          bodyLarge: TextStyle(
            color: SAColors.textColor2,
            fontSize: 14,
          ),
          bodySmall: TextStyle(
            color: SAColors.textColor1,
            fontSize: 11,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
