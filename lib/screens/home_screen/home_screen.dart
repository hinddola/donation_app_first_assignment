import 'package:donation_first_assignment/screens/follow_your_order_screen/follow_your_order_screen.dart';
import 'package:donation_first_assignment/screens/phone_screen/phone_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:donation_first_assignment/consts/style.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currenttIndex = 2;

  List <Widget> screens = [
    PhoneScreen(),
    HomeScreen(),
    FollowYourOrderScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar : BottomNavigationBar(
        selectedItemColor: K.primaryColor,
        currentIndex: currenttIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.phone_in_talk_outlined
              ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.house_outlined
              ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.location_on
              ),
              label: 'تتبع الطلب'
          ),
        ],
        onTap: (index){
         setState(() {
           currenttIndex = index ;
         });
        },
      ),
      body: screens.elementAt(currenttIndex),
    );
  }
}
