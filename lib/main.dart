import 'package:Bmiapp/homepage.dart';
import 'package:Bmiapp/showBmi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class BmiApp extends StatelessWidget {
  const BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Homepage.routeName,
        routes: {
          Homepage.routeName: (context) => const Homepage(),
          Showbmi.routeName: (context) => const Showbmi()
        },
      ),
    );
  }
}

void main() {
  runApp(const BmiApp());
}
