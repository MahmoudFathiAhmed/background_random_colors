import 'package:background_random_colors/core/utils/app_strings.dart';
import 'package:background_random_colors/modules/background_random_colors/views/background_random_colors_screen.dart';
import 'package:flutter/material.dart';
///main App class
class App extends StatelessWidget {
  ///consturctor
  const App({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BackgroundRandomColorsScreen(),
    );
  }
}
