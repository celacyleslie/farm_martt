import 'package:flutter/material.dart';
import 'package:farm_martt/screens/welcome/components/body.dart';
import 'package:farm_martt/screens/Login/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static var routeName;

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body());
  }
}
