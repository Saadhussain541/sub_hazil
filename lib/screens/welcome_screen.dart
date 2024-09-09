import 'package:flutter/material.dart';

import '../Utils/colors.dart';
import '../Utils/size.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: screenHeight * 0.14, horizontal: screenWidth * 0.04),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Welcome to Home',style: TextStyle(
                  fontSize: AppSize.headingSize,
                  color: AppColors.secondaryColor,
                  fontWeight: FontWeight.w900
              ),),
              AppSize.verticleDivider(0.2,context),

              Image.asset('assets/images/welcome_image.png',width:screenWidth*0.5,),
            ],
          ),
        ),
      )),

    );
  }
}
