import 'package:flutter/material.dart';

import '../Utils/colors.dart';
class CustomPasswordField extends StatefulWidget {
  bool isShow;
  String hintText;
  CustomPasswordField({super.key,required this.hintText,this.isShow=true});

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isShow,
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
          hintText: "${widget.hintText}",
          suffixIcon:  IconButton(onPressed: (){
            setState(() {
              widget.isShow=!widget.isShow;
            });

          }, icon: Icon(widget.isShow?Icons.visibility_off:Icons.visibility)
      ),
    )
    );
  }
}
