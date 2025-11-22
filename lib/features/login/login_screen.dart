import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_app/common/routes.dart';
import 'package:new_app/features/widgets/main_button.dart';
import 'package:new_app/features/widgets/social_button.dart';
import 'package:new_app/generated/assets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          children: [
            Image.asset(Assets.imagesLoginImg, width: 250.w, height: 250.h),
            Text(
              "Let's sign you in",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.sp),
            ),
            10.verticalSpace,
            Text(
              'Simplity healthy eating with a meal plan tailorec',
              style: TextStyle(fontSize: 12.sp, color: Colors.black54),
            ),
            5.verticalSpace,
            Text(
              'to your goals, tastes, and schedule',
              style: TextStyle(fontSize: 12.sp, color: Colors.black54),
            ),
            20.verticalSpace,
            SocialButton(
              title: 'Login with Google',
              icon: SvgPicture.asset(Assets.iconsGoogle, width: 24, height: 24),
              onPressed: () {},
            ),
            20.verticalSpace,
            SocialButton(
              title: 'Login with Apple',
              icon: SvgPicture.asset(Assets.iconsApple, width: 24, height: 24),
              onPressed: () {},
            ),
            20.verticalSpace,
            SocialButton(
              title: 'Login with Facebook',
              icon: SvgPicture.asset(
                Assets.iconsFacebook,
                width: 24,
                height: 24,
              ),
              onPressed: () {},
            ),
            20.verticalSpace,
            Text('or'),
            40.verticalSpace,
            MainButton(
              title: 'Login with Email',
              onPressed: () {
                Navigator.pushNamed(context, Routes.loginEmailScreen);
              },
            ),
            15.verticalSpace,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('dont have an account ?'),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.registerScreen);
                  },
                  child: Text(
                    'create an account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
