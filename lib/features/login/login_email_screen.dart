import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app/common/routes.dart';
import 'package:new_app/features/widgets/custom_text_filed.dart';
import 'package:new_app/features/widgets/main_button.dart';

class LoginEmailScreen extends StatelessWidget {
  const LoginEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            20.verticalSpace,
            Text(
              'Login to your Account',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w800),
            ),
            20.verticalSpace,
            Text('Simplify health eating with a meal plan tailored'),
            Text('to vour goals, tastes. and schedule'),
            40.verticalSpace,
            CustomTextFiled(
              hintText: 'email',
              controller: emailController,
              obscureText: false,
              suffixIcon: Icon(Icons.email),
            ),
            20.verticalSpace,
            CustomTextFiled(
              hintText: 'password',
              controller: passwordController,
              obscureText: true,
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
            ),
            40.verticalSpace,
            MainButton(
              title: 'Login',
              onPressed: () {
                Navigator.pushNamed(context, Routes.newsScreen);
              },
            ),
            10.verticalSpace,
          ],
        ),
      ),
    );
  }
}
