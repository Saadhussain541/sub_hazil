import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:untitled/widgets/reusable_button.dart';

import '../../Utils/colors.dart';
import '../../Utils/size.dart';
class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.15),
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Almost there',style: TextStyle(
                fontSize: AppSize.headingSize,
                color: AppColors.secondaryColor,
                fontWeight: FontWeight.w900
            ),),
            AppSize.verticleDivider(0.03,context),
            const Text('Please enter the 6-digit code sent to your email or verification.',style: TextStyle(

                fontSize: AppSize.textSize,
                color: AppColors.blackColors,
                fontWeight: FontWeight.w100,
              letterSpacing: 1
            ),
            textAlign: TextAlign.center,
            ),
            AppSize.verticleDivider(0.09,context),
            OtpTextField(
              fillColor: AppColors.whiteColor,
              filled: true,
              numberOfFields: 6,
              showFieldAsBox: true,
              onCodeChanged: (String code) {
              },
              onSubmit: (String verificationCode){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: const Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    }
                );
              }, // end onSubmit
            ),
            AppSize.verticleDivider(0.07,context),
            CustomButtom(isShowIcon: false, text: 'Verify'),
            AppSize.verticleDivider(0.05,context),
            const Text('Didn’t receive any code? Resend Again',style: TextStyle(
              fontSize: AppSize.textSize,
              color: AppColors.blackColors
            ),),
            AppSize.verticleDivider(0.01,context),
            const Text('Request a new code in 00:30s',style: TextStyle(
                fontSize: AppSize.textSize,
                color: AppColors.grayColor
            ),),
            AppSize.verticleDivider(0.1,context),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: screenWidth*0.13,
                    height: screenHeight*0.13,
                    decoration: const BoxDecoration(
                      color: AppColors.blackColors,
                      shape: BoxShape.circle
                    ),
                    child: const Center(child:Icon(Icons.chevron_left,size: 40,color: AppColors.whiteColor,)),
                  ),
                ],
              ),
            )




          ],
        ),),
      )),
    );
  }
}
