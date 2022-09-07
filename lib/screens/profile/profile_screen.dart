import 'package:farm_martt/constants.dart';
import 'package:farm_martt/enums.dart';
import 'package:farm_martt/screens/home_screen.dart';
import 'package:farm_martt/screens/profile/components/custom_bottom_nb.dart';
import 'package:flutter/material.dart';
import 'package:farm_martt/screens/profile/components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = '/profile';
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "My Profile",
          style: TextStyle(color: Colors.grey[500]),
        ),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectMenu: MenuState.profile,
      ),
    );
  }
}
