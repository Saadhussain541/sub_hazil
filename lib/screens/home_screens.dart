import 'package:flutter/material.dart';
import 'package:untitled/screens/bottomNavigator_screens/events_screen.dart';
import 'package:untitled/screens/bottomNavigator_screens/map_screens.dart';
import 'package:untitled/screens/bottomNavigator_screens/points_screens.dart';
import 'package:untitled/screens/bottomNavigator_screens/profile_screens.dart';
import 'package:untitled/screens/bottomNavigator_screens/shop_screens.dart';

import '../Utils/colors.dart';
import '../Utils/size.dart';
class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  int selectedIndex=1;

  final key1=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    List<Widget> screens=[const MapScreens(),const EventsScreen(),const ShopScreens(),const PointsScreens(),const ProfileScreens()];
    return Scaffold(
      key: key1,
      drawer: const Drawer(),
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right:screenWidth*0.01),
            child: const Icon(Icons.map_outlined,size:35,color: AppColors.whiteColor,),
          )
        ],
        leading: GestureDetector(
            onTap: (){
              key1.currentState!.openDrawer();
            },
            child: const Icon(Icons.menu,color: AppColors.whiteColor,size: 35,)),
        centerTitle: true,
        backgroundColor: AppColors.blackColors,
        title: const Text('GARAGETOYS',style: TextStyle(
            fontSize: AppSize.subHeadingSize,
            color: AppColors.whiteColor,
            fontWeight: FontWeight.w900
        ),),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.grayColor,
          currentIndex: selectedIndex,
          showUnselectedLabels: true,
          onTap: (value){
            setState(() {
              selectedIndex=value;
            });
          },

          items: const [
        BottomNavigationBarItem(icon: Icon(Icons.map_outlined),label: 'Map'),
        BottomNavigationBarItem(icon: Icon(Icons.event),label: 'Events'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_sharp),label: 'Shops'),
        BottomNavigationBarItem(icon: Icon(Icons.control_point_duplicate),label: 'Points'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
      ]),
      body: screens[selectedIndex],
    );
  }
}
