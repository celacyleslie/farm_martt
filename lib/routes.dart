import 'dart:js';

import 'package:farm_martt/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:farm_martt/constants.dart';
import 'package:farm_martt/screens/Login/login_screen.dart';
import 'package:farm_martt/screens/welcome_screen.dart';
import 'package:farm_martt/screens/SignUp/signup_screen.dart';
import 'package:farm_martt/screens/details/details_screen.dart';
import 'package:farm_martt/screens/cart/cart_screen.dart';
import 'package:farm_martt/screens/profile/profile_screen.dart';

final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
