import 'package:farm_martt/constants.dart';
import 'package:farm_martt/enums.dart';
import 'package:farm_martt/screens/home_screen.dart';
import 'package:farm_martt/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key, required this.selectMenu})
      : super(key: key);
  final MenuState selectMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          IconButton(
            icon: Image.asset(
              "assets/icons/store.png",
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen();
                  },
                ),
              );
            },
          ),
          IconButton(
            icon: Image.asset(
              "assets/images/heart.png",
              color: MenuState.favourite == selectMenu
                  ? kPrimaryColor
                  : inActiveIconColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              "assets/icons/comment.png",
              color: MenuState.message == selectMenu
                  ? kPrimaryColor
                  : inActiveIconColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              "assets/icons/user.png",
              color: MenuState.profile == selectMenu
                  ? kPrimaryColor
                  : inActiveIconColor,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ProfileScreen();
                  },
                ),
              );
            },
          )
        ]),
      ),
    );
  }
}
