import 'package:farm_martt/constants.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            login ? "Don't have an account?" : "Already have an Account? ",
            style: TextStyle(color: kPrimaryLightColor),
          ),
          GestureDetector(
            onTap: press,
            child:Text(
              login ? "  Sign Up" : "Sign In",
              style: TextStyle(color: kPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          )]
    );
  }
}
