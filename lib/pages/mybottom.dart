
import 'package:flutter/material.dart';

class MyBottomBar extends StatelessWidget {
  final int index;
  final Function(int?) onTap;
  const MyBottomBar({
    Key? key,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: onTap,
      selectedItemColor: Colors.blue,
      selectedIconTheme:const IconThemeData(color:Colors.blue),
      unselectedItemColor: Colors.black,
      backgroundColor: Colors.transparent,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline), label: 'Favourite'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), label: 'Profile'),
      ],
    );
  }
}
