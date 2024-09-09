import 'package:flutter/material.dart';

import '../Utils/colors.dart';
class CustomTextfield extends StatelessWidget {

  String hintText;
  IconData? icon;
  bool isIconShow;
  CustomTextfield({super.key,required this.hintText,this.icon,this.isIconShow=true});

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      decoration: InputDecoration(
          hintStyle: TextStyle(
              color:AppColors.lightgreyColor
          ),
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: AppColors.whiteColor
              ),
              borderRadius: BorderRadius.circular(10)
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: AppColors.whiteColor
              ),
              borderRadius: BorderRadius.circular(10)
          ),

          fillColor: AppColors.whiteColor,
          filled: true,
          hintText: "$hintText",
          suffixIcon:  isIconShow?Icon(icon):SizedBox()
      ),
    );
  }
}
