import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:untitled/Utils/colors.dart';
import 'package:untitled/Utils/size.dart';
import 'package:untitled/styles/styles.dart';
import 'package:untitled/widgets/custom_search_field.dart';
import 'package:untitled/widgets/custom_tabs.dart';
class ShopScreens extends StatefulWidget {
  const ShopScreens({super.key});

  @override
  State<ShopScreens> createState() => _ShopScreensState();
}

class _ShopScreensState extends State<ShopScreens> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
 List cardImages=['assets/images/cloth1.png','assets/images/cloth2.png','assets/images/cloth1.png','assets/images/cloth2.png',
   'assets/images/cloth1.png','assets/images/cloth2.png','assets/images/cloth1.png','assets/images/cloth2.png'
 ];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(child: Padding(padding: EdgeInsets.symmetric(
          vertical: screenHeight * 0.05, horizontal: screenWidth * 0.04,
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Expanded(child: CustomSearchField()),
              AppSize.horizontalDivider(0.02, context),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.blackColors,
                  borderRadius: BorderRadius.circular(12)
                ),
                padding: EdgeInsets.symmetric(horizontal: screenWidth*0.05,vertical: screenHeight*0.014),

                child: Center(
                  child: Icon(Icons.sort,color: AppColors.whiteColor,size: screenWidth*0.065,),
                ),
              )
            ],
          ),
          AppSize.verticleDivider(0.015, context),
          TabBar(
           dividerColor: Colors.transparent,
            labelColor: Colors.white,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColors.blackColors,
            ),
              unselectedLabelColor: AppColors.blackColors,
              controller: _tabController,
              tabs: [
                CustomTabs(text: 'All Items', icon: Icons.border_all_outlined),
                CustomTabs(text: 'Dress', icon: Icons.border_all_outlined),
                CustomTabs(text: 'Hat', icon: Icons.border_all_outlined),
          ]),
          AppSize.verticleDivider(0.015, context),
          Expanded(child: TabBarView(
              controller: _tabController,
              children: [
                GridView.builder(
                  itemCount:cardImages.length,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 500),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          AspectRatio(
                              aspectRatio: 16 / 12,
                              child: Image.asset('${cardImages[index]}',fit: BoxFit.cover,)),
                          Text('Rita long',style: AppStyles.headline1),
                          Text('sleeve Sweater',style: AppStyles.headline1),
                          Text('\$29.99',style: AppStyles.headline1)
                        ],
                      );
                    },),
                Container(color: Colors.blue,),
                Container(color: Colors.brown,),


          ]))


        ],
      ),
      ))
    );
  }
}
