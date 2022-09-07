import 'package:farm_martt/components/already_have_an_account_check.dart';
import 'package:farm_martt/components/rounded_button.dart';
import 'package:farm_martt/components/rounded_input_field.dart';
import 'package:farm_martt/components/rounded_password_field.dart';
import 'package:farm_martt/components/text_field_container.dart';
import 'package:farm_martt/constants.dart';
import 'package:farm_martt/screens/SignUp/signup_screen.dart';
import 'package:farm_martt/screens/home_screen.dart';
import 'package:farm_martt/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:farm_martt/screens/Login/components/background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "LOGIN",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        Image.asset(
          "assets/images/login.png",
          height: size.height * 0.35,
        ),
        RoundedInputField(
          hintText: "Your Email",
          onChanged: (value) {},
        ),
        RoundedPasswordField(
          onChanged: (value) {},
        ),
        RoundedButton(
          text: "LOGIN",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ProfileScreen();
                },
              ),
            );
          },
        ),
        AlreadyHaveAnAccountCheck(
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SignUpScreen();
                },
              ),
            );
          },
        ),
      ],
    ));
  }
}
