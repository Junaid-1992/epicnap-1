import 'package:first_project/utils/app_colors.dart';
import 'package:flutter/material.dart';


class BottomNavigator extends StatelessWidget {
  final Function(int) onTap;
  final int currentIndex;
  const BottomNavigator({super.key , required this.onTap , required this.currentIndex});

  @override
  // Widget build(BuildContext context) {
  //   return  BottomNavigationBar(
  //           backgroundColor: CustomAppColor.kWhiteColor,
  //           selectedItemColor: CustomAppColor.kOrange,
  //           unselectedItemColor:
  //           Colors.grey[700],
  //           currentIndex: currentIndex,
  //           items: const <BottomNavigationBarItem>[
  //             BottomNavigationBarItem(
  //               icon: Icon(Icons.home,
  //                 size: 34, ),
  //               label: '',
  //             ),
  //             BottomNavigationBarItem(
  //               icon: Icon(Icons.library_books_rounded , size: 34),
  //               label: '',
  //             ),
  //
  //             BottomNavigationBarItem(
  //               icon: Icon(Icons.message,  size: 34,),
  //               label: '',
  //             ),
  //             BottomNavigationBarItem(
  //               icon: Icon(Icons.person,  size: 34,),
  //               label: '',
  //             ),
  //           ],
  //
  //           onTap: onTap
  //       );
  // }


  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: CustomAppColor.kWhiteColor,
      selectedItemColor: CustomAppColor.kOrange,
      unselectedItemColor: Colors.grey[700],
      currentIndex: currentIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/home.png',
            width: 30,
            height: 30,
          ),
          activeIcon: Image.asset(
            'assets/active_home.png', // Replace with selected state icon path
            width: 30,
            height: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/book.png',
            width: 34,
            height: 34,
          ),
          activeIcon: Image.asset(
            'assets/active_book.png', // Replace with selected state icon path
            width: 34,
            height: 34,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/chat.png',
            width: 34,
            height: 34,
          ),
          activeIcon: Image.asset(
            'assets/active_chat.png', // Replace with selected state icon path
            width: 34,
            height: 34,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/person.png',
            width: 30,
            height: 30,
          ),
          activeIcon: Image.asset(
            'assets/active_person.png', // Replace with selected state icon path
            width: 30,
            height: 30,
          ),
          label: '',
        ),
      ],
      onTap: onTap,
      selectedIconTheme: IconThemeData(size: 40), // Adjust size as needed
    );
  }


}





