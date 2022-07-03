import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/SignUp/components/background.dart';
import 'package:flutter_auth/Screens/SignUp/components/or_divider.dart';
import 'package:flutter_auth/Screens/SignUp/components/social_icon.dart';
import 'package:flutter_auth/components/already_have_anaccount_chech.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required Column child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "SIGNUP",
            style: TextStyle(fontWeight: FontWeight.bold, color: kPrimaryColor),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset("assets/icons/signup.svg",
              height: size.height * 0.35),
          RoundedInputField(
              hintText: "meirambek@mail.com", onChanged: (value) {}),
          RoundedPasswordField(onChanged: (value) {}),
          RoundedButton(text: "SIGNUP", press: () {}),
          SizedBox(
            height: size.height * 0.03,
          ),
          AlreadyHaveAnAccountCheck(
            press: () {},
            login: false,
          ),
          const OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SocialIcon(
                iconSrc: "assets/icons/facebook.svg",
                press: () {},
              ),
              SocialIcon(
                iconSrc: "assets/icons/twitter.svg",
                press: () {},
              ),
              SocialIcon(
                iconSrc: "assets/icons/google-plus.svg",
                press: () {},
              )
            ],
          )
        ],
      ),
    ));
  }
}
