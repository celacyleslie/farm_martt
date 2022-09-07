import 'package:farm_martt/components/already_have_an_account_check.dart';
import 'package:farm_martt/components/or_divider.dart';
import 'package:farm_martt/components/rounded_button.dart';
import 'package:farm_martt/components/rounded_input_field.dart';
import 'package:farm_martt/components/rounded_password_field.dart';
import 'package:farm_martt/components/social_icon.dart';
import 'package:farm_martt/constants.dart';
import 'package:farm_martt/screens/Login/login_screen.dart';
import 'package:farm_martt/screens/SignUp/components/background.dart';
import 'package:flutter/material.dart';
import 'package:farm_martt/screens/SignUp/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGN UP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Image.asset(
              "assets/images/signup.png",
              height: size.width * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: "assets/images/goo.png",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/images/fb.png",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/images/twi.png",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
