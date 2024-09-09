import 'package:flutter/cupertino.dart';

class AppSize
{
  static const double headingSize=36;
  static const double subHeadingSize=24;
  static const double subHeadingSize1=20;
  static const double buttonTextSize=18;
  static const double textSize=14;
  static const double subTextSize=13;



  static SizedBox verticleDivider(double value,BuildContext context)
  {
    return SizedBox(
      height: MediaQuery.of(context).size.height*value,
    );
  }

  static SizedBox horizontalDivider(double value,BuildContext context)
  {
    return SizedBox(
      width: MediaQuery.of(context).size.width*value,
    );
  }




}