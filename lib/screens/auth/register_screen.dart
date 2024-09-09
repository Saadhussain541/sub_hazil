import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/auth/login_screen.dart';
import 'package:untitled/screens/auth/otp_screen.dart';

import '../../Utils/colors.dart';
import '../../Utils/size.dart';
import '../../styles/styles.dart';
import '../../widgets/custom_textField.dart';
import '../../widgets/reusable_button.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isCheck = false;

  void _toggleCheckbox(bool? value) {
    setState(() {
      isCheck = value ?? false;
    });
  }
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(child: Padding(
        padding: EdgeInsets.symmetric(
        vertical: screenHeight * 0.05, horizontal: screenWidth * 0.04),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 150,
                ),
                AppSize.verticleDivider(0.01,context),
                Text('Get Started',style:AppStyles.HeadingStyle),
                AppSize.verticleDivider(0.01,context),
                const Text('by creating a free account.'),
                AppSize.verticleDivider(0.02,context),
                Form(child: Column(children: [
                  CustomTextfield(hintText: "Full Name",isIconShow: false,),
                  AppSize.verticleDivider(0.01,context),
                  CustomTextfield(hintText: "Valid Email",isIconShow: false,),
                  AppSize.verticleDivider(0.01,context),
                  CustomTextfield(hintText: "Phone Number",isIconShow: false,),
                  AppSize.verticleDivider(0.01,context),
                  CustomTextfield(hintText: "Strong Password",isIconShow: false,),
                  AppSize.verticleDivider(0.02,context),
                ],
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      activeColor: AppColors.secondaryColor,
                        side: const BorderSide(
                          color: AppColors.whiteColor,
                          width: 2
                        ),
                        value: isCheck, onChanged: _toggleCheckbox),
                    RichText(text:  TextSpan(
                        text: 'By checking the box you agree to out ',
                        style: AppStyles.textStyle(color: AppColors.blackColors),
                        children: [
                          TextSpan(
                            text: 'Terms ',
                            style: AppStyles.textStyle(color: AppColors.whiteColor),
                          ),
                          TextSpan(
                            text: 'and ',
                            style: AppStyles.textStyle(color: AppColors.blackColors),
                          ),
                          TextSpan(
                            text: 'Condition',
                            style: AppStyles.textStyle(color: AppColors.whiteColor),
                          )
                        ]
                    ))
                  ],
                ),
              ],
            ),
              Column(
                children: [
                  CustomButtom(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const OtpScreen(),));
                      },
                      isShowIcon: true, text: 'Next'),
                  AppSize.verticleDivider(0.02,context),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already a member ?',style: TextStyle(fontSize: AppSize.subTextSize,
                          fontWeight: FontWeight.w200),),
                      AppSize.horizontalDivider(0.01, context),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
                        },
                        child: const Text('Login in',style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: AppSize.subTextSize,
                            fontWeight: FontWeight.w700
                        ),),
                      )
                    ],
                  ),

                ],
              )
            ]
        ),
            ),
    )));
  }
}
