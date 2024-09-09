import 'package:flutter/material.dart';
import 'package:untitled/widgets/ReusableHeader.dart';
import 'package:untitled/widgets/event_card.dart';

import '../../Utils/colors.dart';
import '../../Utils/size.dart';
class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    List cardImages=['assets/images/event_image1.jpg','assets/images/event_image2.jpg','assets/images/event_image3.jpg'];
    List cardTitle=['Elevate: The Conference for Professional Growth','Professional Advancement Conference- 2023',
    'The Future Of UX Design Conference- 2023'
    ];
    List  cardAddress=['Los Angeles','Florida','Florida'];
    List cardPrice=['30','Free','60'];
    List personImages=['assets/images/person1.jpg','assets/images/person2.jpg','assets/images/person3.jpg'];
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(child: Padding(padding: EdgeInsets.symmetric(
          vertical: screenHeight * 0.05, horizontal: screenWidth * 0.04),
      child:  Column(
        children: [
           ReusableHeader(heading: 'Upcoming Events'),
          AppSize.verticleDivider(0.03, context),
          SizedBox(
            height: screenHeight*0.35,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: screenWidth*0.02),
                padding: EdgeInsets.symmetric(horizontal: screenWidth*0.02,vertical: screenHeight*0.01),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.whiteColor,

                ),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: screenWidth*0.5,
                          height: screenHeight*0.15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(image: AssetImage('assets/images/event_image1.jpg',
                              ),fit: BoxFit.cover)
                          ),
                        ),
                        Positioned(
                          top: 5,
                          left: 5,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: screenWidth*0.03,vertical: screenHeight*0.002),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColors.whiteColor
                            ),
                            child: const Column(
                              children: [
                                Text('10',style: TextStyle(
                                    color: AppColors.blackColors,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22
                                ),),
                                Text('Dec')
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 5,
                          right: 5,
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: screenWidth*0.01,vertical: screenHeight*0.002),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.whiteColor
                              ),
                              child: const Center(
                                child: Icon(Icons.save_alt),
                              )
                          ),
                        )
                      ],
                    ),
                    AppSize.verticleDivider(0.02,context),
                    const Text('InnovateX: The Future of ',style: TextStyle(
                        fontSize: AppSize.subHeadingSize,
                        color: AppColors.blackColors,
                        fontWeight: FontWeight.w700
                    ),),
                    AppSize.verticleDivider(0.02,context),
                    Padding(
                      padding:EdgeInsets.only(left: screenWidth*0.015),
                      child: Row(
                        children: [
                          // SizedBox(
                          //   width: screenWidth*0.18,
                          //   child: const Stack(
                          //     children: [
                          //       Positioned(
                          //         left: 20,
                          //         child: CircleAvatar(
                          //           backgroundImage: AssetImage('assets/images/person2.jpg'),
                          //         ),
                          //       ),
                          //       CircleAvatar(
                          //         backgroundImage: AssetImage('assets/images/person1.jpg'),
                          //       ),
                          //       Positioned(
                          //         left: 40,
                          //         child: CircleAvatar(
                          //           backgroundImage: AssetImage('assets/images/person3.jpg'),
                          //         ),
                          //       ),
                          //
                          //     ],
                          //   ),
                          // ),
                          for(int i=0;i<3;i++)
                            Align(
                              widthFactor: 0.5,
                              child: CircleAvatar(
                                radius: screenWidth*0.045,
                                backgroundColor: AppColors.whiteColor,
                                child: CircleAvatar(

                                  radius: screenWidth*0.04,
                                  backgroundImage: AssetImage('${personImages[i]}'),
                                ),
                              ),
                            ),
                          AppSize.horizontalDivider(0.025, context),
                          const Text('+30 Going',style: TextStyle(
                              color: AppColors.primaryColor
                          ),)
                        ],
                      ),
                    ),
                    AppSize.verticleDivider(0.02,context),
                    const Row(
                      children: [
                        Icon(Icons.location_on,color: AppColors.grayColor,),
                        Text('36 Guild Street London, USA ',style: TextStyle(
                            color: AppColors.grayColor
                        ),)
                      ],
                    )

                  ],
                ),

              );
            },),
          ),
          AppSize.verticleDivider(0.02,context),
          ReusableHeader(heading: 'Recommendations for you'),
          AppSize.verticleDivider(0.01,context),
          Expanded(child: ListView.builder(
            itemCount: cardImages.length,
            itemBuilder: (context, index) {
            return EventCard(image: '${cardImages[index]}', title: '${cardTitle[index]}',
                address: '${cardAddress[index]}', price: '${cardPrice[index]}');
          },))


        ],
      ),
      ))
    );
  }
}
