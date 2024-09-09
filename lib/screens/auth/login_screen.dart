import 'package:flutter/material.dart';
import 'package:untitled/Utils/size.dart';
import 'package:untitled/screens/auth/register_screen.dart';
import 'package:untitled/styles/styles.dart';
import 'package:untitled/widgets/custom_password_field.dart';
import 'package:untitled/widgets/custom_textField.dart';
import 'package:untitled/widgets/reusable_button.dart';
import '../../Utils/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isCheck=false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: screenHeight * 0.05, horizontal: screenWidth * 0.04),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 150,
              ),
              AppSize.verticleDivider(0.03,context),
               Text('Welcome Back',style:AppStyles.subHeadingStyle(),),
              AppSize.verticleDivider(0.01,context),
              const Text('sign in to access your account'),
              AppSize.verticleDivider(0.1,context),
              Form(child: Column(children: [
                CustomTextfield(hintText: "Enter your email",icon: Icons.email_outlined,),
                AppSize.verticleDivider(0.01,context),
                CustomPasswordField(hintText: 'Enter your password'),
                AppSize.verticleDivider(0.01,context),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(

                      children: [
                        Checkbox(
                            activeColor: AppColors.secondaryColor,
                            side: const BorderSide(
                              color: Colors.white,
                              width: 2
                            ),
                            value: isCheck, onChanged: (value){
                          setState(() {
                            isCheck=!isCheck;
                          });
                        }),
                        const Text('Remember me',style: TextStyle(color: AppColors.blackColors,fontSize: AppSize.subTextSize,),),
                      ],
                    ),
                    TextButton(onPressed: (){}, child: const Text('Forget Password?',style: TextStyle(color: AppColors.blackColors,fontSize: AppSize.subTextSize,),))
                  ],
                )

              ],)),
              AppSize.verticleDivider(0.02,context),
              Row(
                children: [
                  const Expanded(child: Divider(color: AppColors.whiteColor,)),
                  Container(
                    width: screenWidth*0.15,
                    height: screenHeight*0.025,
                    decoration: BoxDecoration(
                      color: AppColors.blackColors,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: const Center(
                      child: Text('OR',style: TextStyle(
                        color: AppColors.whiteColor
                      ),),
                    ),
                  ),
                  const Expanded(child: Divider(color: AppColors.whiteColor,)),

                ],
              ),
              AppSize.verticleDivider(0.04,context),
              Stack(
                children: [

                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(40)
                    ),
                    width: screenWidth*1,
                    height: screenHeight*0.05,
                    child: const Center(
                      child: Text('Sign in with Google',style: TextStyle(
                        color: AppColors.blackColors,
                        fontSize: AppSize.buttonTextSize
                      ),),
                    ),
                  ),
                  Positioned(
                      top: 0,
                      bottom: 0,
                      left: 5,
                      child: Image.asset('assets/images/google_icon.png')),
                ],
              ),
              AppSize.verticleDivider(0.07,context),
              CustomButtom(isShowIcon: true, text: 'Next'),
              AppSize.verticleDivider(0.02,context),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('New Member ?',style: TextStyle(fontSize: AppSize.subTextSize,
                      fontWeight: FontWeight.w200),),
                  AppSize.horizontalDivider(0.01, context),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>const RegisterScreen(),));
                    },
                    child: const Text('Register Now',style: TextStyle(
                        color: AppColors.blackColors,
                        fontSize: AppSize.subTextSize,
                        fontWeight: FontWeight.w700
                    ),),
                  )
                ],
              ),




            ],
          ),
        ),
      )),
    );
  }
}
