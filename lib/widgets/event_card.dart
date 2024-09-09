import 'package:flutter/material.dart';

import '../Utils/colors.dart';
import '../Utils/size.dart';
import '../styles/styles.dart';
class EventCard extends StatelessWidget {
  String image;
  String title;
  String address;
  String price;


  EventCard({super.key, required this.image,required this.title,required this.address,required this.price});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(vertical: screenHeight*0.01),
      padding: EdgeInsets.symmetric(vertical: screenHeight*0.01,horizontal: screenWidth*0.02),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.whiteColor,
      ),
      child: Row(
        children: [
          Container(
            width: screenWidth*0.3,
            height: screenHeight*0.15,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(image: AssetImage(image),
                    fit: BoxFit.cover
                )
            ),

          ),
          AppSize.horizontalDivider(0.02, context),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width:screenWidth*0.5,
                child: Text(title,style: AppStyles.headerTextStyle()),
              ),
              AppSize.verticleDivider(0.01,context),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                   Row(
                    children: [
                      const Icon(Icons.location_on),
                      Text(address)
                    ],
                  ),
                  AppSize.horizontalDivider(0.15, context),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: screenHeight*0.002,horizontal: screenWidth*0.02),
                    child:  Center(
                      child: Text(price=='free'?'Free':'\$$price'),
                    ),
                    // height: screenHeight*0.02,
                    decoration: BoxDecoration(
                        color: AppColors.ligthgray1Color,
                        borderRadius: BorderRadius.circular(5)
                    ),
                  )
                ],
              )

            ],
          )
        ],
      ),
    );
  }
}
