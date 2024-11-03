import 'package:Bmiapp/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Showbmi extends StatelessWidget {
  static const String routeName = 'showBmi';
  const Showbmi({super.key});

  @override
  Widget build(BuildContext context) {
    final args = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    final bmi = args['Bmi'] ?? 0;
    final stateDesc = args['state'] ?? 0;

    return Scaffold(
      backgroundColor: Appcolors.primaryColor,
      appBar: AppBar(
        backgroundColor: Appcolors.unSellected,
        centerTitle: true,
        title: const Text(
          'Bmi Calculator',
          style: TextStyle(color: Appcolors.whiteColor),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Your Result',
            style: TextStyle(
                color: Appcolors.whiteColor,
                fontSize: 40.sp,
                fontWeight: FontWeight.bold),
          ),
          Container(
            width: 500.w,
            height: 400.h,
            decoration: BoxDecoration(
                color: Appcolors.unSellected,
                borderRadius: BorderRadius.circular(30.r)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Result',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  '$bmi',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '$stateDesc',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.sp,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 400.w,
              height: 120.h,
              decoration: BoxDecoration(
                  color: Appcolors.callculateButton,
                  borderRadius: BorderRadius.circular(20.r)),
              child: Center(
                child: Text(
                  'Re-Calculate',
                  style: TextStyle(
                      color: Appcolors.whiteColor,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
