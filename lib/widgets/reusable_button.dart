import 'package:flutter/material.dart';

import '../Utils/colors.dart';
import '../Utils/size.dart';
class CustomButtom extends StatelessWidget {
  String text;
  bool isShowIcon;
  final GestureTapCallback? onTap;
  CustomButtom({super.key, required this.isShowIcon,required this.text,this.onTap});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: screenHeight*0.012),
        decoration: BoxDecoration(
          color: AppColors.blackColors,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text,style: const TextStyle(
                color: AppColors.whiteColor,
                fontSize: AppSize.buttonTextSize
            ),),
            AppSize.horizontalDivider(0.001, context),
            isShowIcon?const Icon(Icons.chevron_right,color: AppColors.whiteColor,):const SizedBox()
          ],
        ),
      ),
    );
  }
}
