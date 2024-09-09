import 'package:flutter/material.dart';

import '../Utils/colors.dart';
class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        fillColor: AppColors.whiteColor,
        filled: true,
        hintText: "Search clothes...",
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
      ),
    );
  }
}
