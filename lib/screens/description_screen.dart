import 'package:flutter/material.dart';
import 'package:untitled/Utils/size.dart';
import 'package:untitled/styles/styles.dart';

import '../Utils/colors.dart';
class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({super.key});

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.chevron_left)),
        actions: [
          IconButton(onPressed: (){}, icon: IconButton(onPressed: (){}, icon: Icon(Icons.card_travel)))
        ],
      ),
      body: SafeArea(child: Column(children: [
        Image.asset('assets/images/cloth2.png',width: screenWidth*0.85,),
        AppSize.verticleDivider(0.02, context),
        Expanded(child: Container(
          padding: EdgeInsets.symmetric(vertical: screenHeight*0.04,horizontal: screenWidth*0.05),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40)
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.star,color: Colors.yellow,),
                AppSize.horizontalDivider(0.02, context),
                Text('(4.2)')
              ],
            ),
            SizedBox(
                width: screenWidth*0.5,
                child: Text('Rita long sleeve Sweater',style: AppStyles.headline,)),
            AppSize.verticleDivider(0.008, context),
            Text('Rita.co',style: TextStyle(
              color: AppColors.grayColor,
              fontSize: AppSize.textSize
            ),),
            AppSize.verticleDivider(0.008, context),

            Text('size',style: AppStyles.headline,),




          ],
        ),



        )),


      ],)),
    );
  }
}
