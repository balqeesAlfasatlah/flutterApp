import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialButton extends StatelessWidget {
  final String title;
  final Widget icon;
  final VoidCallback onPressed;
  const SocialButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xFF879FA6C5),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            8.horizontalSpace,
            Text(title, style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
