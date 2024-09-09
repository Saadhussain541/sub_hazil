
import 'package:flutter/material.dart';
import 'package:untitled/Utils/colors.dart';

import '../Utils/size.dart';

class AppStyles
{

  static TextStyle headline1 = const TextStyle(
      fontSize: 17,
      color: AppColors.blackColors,
      fontWeight: FontWeight.w900
  );
  static TextStyle headline = const TextStyle(
      fontSize: 24,
      color: AppColors.blackColors,
      fontWeight: FontWeight.w900
  );


  static TextStyle HeadingStyle=const

     TextStyle(
        fontSize: AppSize.headingSize,
        color: AppColors.secondaryColor,
        fontWeight: FontWeight.w900
    );


  static TextStyle headerTextStyle()
  {
    return const TextStyle(
        fontSize: AppSize.subHeadingSize1,
        color: AppColors.blackColors,
        fontWeight: FontWeight.w900

    );
  }

  static TextStyle textStyle({Color? color})
  {
    return TextStyle(
        fontSize: AppSize.subTextSize,
        color: color
    );
  }
  static TextStyle subHeadingStyle({Color? color=AppColors.secondaryColor})
  {
    return TextStyle(
        fontSize: AppSize.subHeadingSize,
        color: color,
        fontWeight: FontWeight.w700
    );
  }






}
