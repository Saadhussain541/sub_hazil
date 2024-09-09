import 'package:flutter/material.dart';
class CustomTabs extends StatelessWidget {
  String text;
  IconData icon;

  CustomTabs({required this.text,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          Text('$text')
        ],
      ),
    );
  }
}
