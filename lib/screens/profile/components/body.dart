import 'package:farm_martt/constants.dart';
import 'package:farm_martt/screens/profile/components/profile_menu.dart';
import 'package:farm_martt/screens/profile/components/profile_pic.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(
          height: 20,
        ),
        ProfileMenu(
          icon: "assets/icons/user.png",
          text: "My Account",
          press: () {},
        ),
        ProfileMenu(
          icon: "assets/icons/bell.png",
          text: "Notifications",
          press: () {},
        ),
        ProfileMenu(
          icon: "assets/icons/settings.png",
          text: "Settings",
          press: () {},
        ),
        ProfileMenu(
          icon: "assets/icons/help.png",
          text: "Help Center",
          press: () {},
        ),
        ProfileMenu(
          icon: "assets/icons/logout.png",
          text: "Log Out",
          press: () {},
        ),
      ],
    );
  }
}
