import 'package:budget_ui/constants.dart';
import 'package:budget_ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Expense Manager',
        theme: ThemeData(
          scaffoldBackgroundColor: kScaffoldColor,
          appBarTheme: AppBarTheme(
            backgroundColor: kPrimaryColor,
            iconTheme: IconThemeData(
              size: 23.sp,
              color: kSecondaryColor,
            ),
          ),
          iconTheme: IconThemeData(
            size: 23.sp,
            color: kSecondaryColor,
          ),
        ),
        home: const HomePage(),
      );
    });
  }
}
