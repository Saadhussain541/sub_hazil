import 'package:flutter/material.dart';
import 'package:untitled/Utils/size.dart';
import 'package:untitled/styles/styles.dart';

import '../Utils/colors.dart';
class ReusableHeader extends StatelessWidget {
  String heading;
  ReusableHeader({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(heading,style: AppStyles.headerTextStyle(),),
        const Row(

          children: [
            Text('See All',style: TextStyle(
                fontWeight: FontWeight.w700
            ),),
            Icon(Icons.arrow_right)
          ],
        )
      ],
    );
  }
}
