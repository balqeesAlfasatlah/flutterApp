import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app/common/routes.dart';
import 'package:new_app/features/widgets/main_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          children: [
            20.verticalSpace,
            Text(
              'Healthy & Eating Made Better',
              style: TextStyle(
                fontSize: 40.sp,
                fontWeight: FontWeight.w700,
                color: Colors.red,
              ),
            ),
            20.verticalSpace,
            Text('Simplify healthy eating with personalized'),
            10.verticalSpace,
            Text('meal plans, recipes, and groceries.'),
            10.verticalSpace,
            Image.asset(
              'assets/images/delivery-person.png',
              width: 350.w,
              height: 350.h,
            ),
            30.verticalSpace,
            MainButton(
              title: 'lets get started',
              onPressed: () {
                Navigator.pushNamed(context, Routes.loginScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
