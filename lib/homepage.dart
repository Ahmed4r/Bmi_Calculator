import 'package:Bmiapp/appcolors.dart';
import 'package:Bmiapp/showBmi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homepage extends StatefulWidget {
  static const String routeName = 'home';
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double bmi = 0;
  double personHeight = 0;
  int weightCounter = 0;
  int ageCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'BMI Calculator',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Appcolors.sellectedColor,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  width: 155.w,
                  height: 188.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    color: Appcolors.unSellected,
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.male,
                        color: Colors.white,
                        size: 140.r,
                      ),
                      Text(
                        'Male',
                        style: TextStyle(
                            color: Appcolors.whiteColor, fontSize: 20.sp),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 155.w,
                  height: 188.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    color: Appcolors.unSellected,
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.female,
                        color: Appcolors.whiteColor,
                        size: 140.r,
                      ),
                      Text(
                        'Female',
                        style: TextStyle(
                            color: Appcolors.whiteColor, fontSize: 20.sp),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            width: 319.w,
            height: 189.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.r),
              color: Appcolors.unSellected,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Height',
                  style: TextStyle(color: Appcolors.textColor, fontSize: 20.sp),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${personHeight.floor()}',
                      style: TextStyle(
                          color: Appcolors.whiteColor,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'cm',
                      style: TextStyle(
                          color: Appcolors.whiteColor,
                          fontSize: 26.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Slider(
                  activeColor: Colors.red,
                  value: personHeight,
                  min: 0,
                  max: 200,
                  onChanged: (value) {
                    setState(() {
                      personHeight = value;
                    });
                  },
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 155.w,
                height: 188.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: Appcolors.unSellected,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'age',
                      style: TextStyle(
                          color: Appcolors.textColor, fontSize: 26.sp),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      '$ageCounter',
                      style: TextStyle(
                          color: Appcolors.whiteColor,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (ageCounter > 0) {
                                ageCounter--;
                              }
                            });
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(30.r)),
                              child: Icon(
                                Icons.remove,
                                color: Appcolors.whiteColor,
                                size: 30.sp,
                              )),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              ageCounter++;
                            });
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(30.r)),
                              child: Icon(
                                Icons.add,
                                color: Appcolors.whiteColor,
                                size: 30.sp,
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              // SizedBox(
              //   width: 10.w,
              // ),
              Container(
                width: 155.w,
                height: 188.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: Appcolors.unSellected,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Weight',
                      style: TextStyle(
                          color: Appcolors.textColor, fontSize: 26.sp),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      '$weightCounter',
                      style: TextStyle(
                          color: Appcolors.whiteColor,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (weightCounter > 0) {
                                weightCounter--;
                              }
                            });
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(30.r)),
                              child: Icon(
                                Icons.remove,
                                color: Appcolors.whiteColor,
                                size: 30.sp,
                              )),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              weightCounter++;
                            });
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(30.r)),
                              child: Icon(
                                Icons.add,
                                color: Appcolors.whiteColor,
                                size: 30.sp,
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          InkWell(
            onTap: () {
              bmi = (weightCounter.floor()) /
                  (personHeight / 100 * personHeight / 100);

              if (bmi < 16) {
                String state = 'severe thinness';
                Navigator.pushNamed(context, Showbmi.routeName,
                    arguments: {'Bmi': bmi.round(), 'state': state});
              } else if (bmi >= 16 && bmi < 17) {
                String state = 'moderate thinness';
                Navigator.pushNamed(context, Showbmi.routeName,
                    arguments: {'Bmi': bmi.round(), 'state': state});
              } else if (bmi >= 17 && bmi <= 18.5) {
                String state = 'mild thinness';
                Navigator.pushNamed(context, Showbmi.routeName,
                    arguments: {'Bmi': bmi.round(), 'state': state});
              } else if (bmi > 18.5 && bmi < 25) {
                String state = 'Normal';
                Navigator.pushNamed(context, Showbmi.routeName,
                    arguments: {'Bmi': bmi.round(), 'state': state});
              } else if (bmi >= 25 && bmi < 30) {
                String state = 'Overweight';
                Navigator.pushNamed(context, Showbmi.routeName,
                    arguments: {'Bmi': bmi.round(), 'state': state});
              } else if (bmi >= 30 && bmi < 35) {
                String state = 'Obese class 1';
                Navigator.pushNamed(context, Showbmi.routeName,
                    arguments: {'Bmi': bmi.round(), 'state': state});
              } else if (bmi >= 35 && bmi < 40) {
                String state = 'Obese class 2';
                Navigator.pushNamed(context, Showbmi.routeName,
                    arguments: {'Bmi': bmi.round(), 'state': state});
              } else if (bmi >= 40) {
                String state = 'Obese class 3';
                Navigator.pushNamed(context, Showbmi.routeName,
                    arguments: {'Bmi': bmi.round(), 'state': state});
              }

              // print('Bmiiiiiiiiiii: ${Bmi.round()}');
              // print("H  : ${personHeight}");
              // print('Weight : ${weightCounter}');
            },
            child: Container(
              width: 360.w,
              height: 90.h,
              decoration: const BoxDecoration(
                // borderRadius: BorderRadius.circular(30.r),
                color: Appcolors.callculateButton,
              ),
              child: Center(
                child: Text(
                  'Calculate',
                  style:
                      TextStyle(color: Appcolors.whiteColor, fontSize: 32.sp),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
