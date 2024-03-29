import 'package:authentication_task/Screens/Register/register.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../components/buttons.dart';
import 'package:flutter/material.dart';
import '../../../../constants.dart';
import '../../Login/login.dart';


class LogInOrSignupBody extends StatelessWidget {
  const LogInOrSignupBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(width: double.infinity.w, height: 15.h),
      Container(
          width: 310.w,
          height: 273.h,
          decoration: const BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: AssetImage("assets/images/loginOrSignupImage.png"),
                fit: BoxFit.fill,
              ))),
      SizedBox(
        height: 40.h,
        width: double.infinity.w,
      ),
      DefaultButton(
        text: "Log in",
        onPressed: () {
          Navigator.pushNamed(context, Login.routeName);
        },
      ),
      SizedBox(
        height: 15.h,
        width: double.infinity.w,
      ),
      SecondaryButton(
        text: "Register",
        onPressed: () {
          Navigator.pushNamed(context, Register.routeName);
        },
      ),
      SizedBox(
        height: 40.h,
      ),
      Text(
        "Powered by: ABS.Ai",
        style: TextStyle(
          fontSize: commonTextSize.sp,
          color: textBlack,
        ),
      )
    ]);
  }
}
