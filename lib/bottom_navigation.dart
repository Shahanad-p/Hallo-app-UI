import 'package:flutter/material.dart';
import 'package:hallo_app_ui/screen/courses_page.dart';
import 'package:hallo_app_ui/screen/home_page.dart';
import 'package:hallo_app_ui/screen/my_profile_page.dart';
import 'package:hallo_app_ui/screen/search_page.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({Key? key}) : super(key: key);

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  List pages = [
    const MyHomePageWidget(),
    const SearchPageWidget(),
    const MyCoursesWidget(),
    const MyProfileWidget(),
  ];
  int currentIndexvalue = 0;
  void onTap(int index) {
    setState(() {
      currentIndexvalue = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndexvalue],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndexvalue,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: 'ᴴᵒᵐᵉ'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              label: 'ᴱˣᵖˡᵒʳᵉ'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.import_contacts,
                size: 30,
              ),
              label: 'ᶜᵒᵘʳˢᵉˢ'),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 14,
              backgroundImage: NetworkImage(
                  'https://imgs.search.brave.com/Gm904w7Q-c1IMvgEMkEOiHLHPWYsWfjxRWVS9YR5Psk/rs:fit:860:0:0/g:ce/aHR0cHM6Ly92YXJp/ZXR5LmNvbS93cC1j/b250ZW50L3VwbG9h/ZHMvMjAyMy8wMy9K/b2huLVdpY2stMy5q/cGc_dz0xMDAwJmg9/NTYyJmNyb3A9MQ'),
            ),
            label: 'ᴾʳᵒᶠⁱˡᵉ',
          ),
        ],
      ),
    );
  }
}
