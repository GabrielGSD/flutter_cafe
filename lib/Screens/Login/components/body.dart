import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/background.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              "assets/icons/logo.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            Text(
              "ENTRAR",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36,
                color: whiteColor,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText1: "Seu e-mail",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              hintText2: "Senha",
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "ENTRAR",
              color: yellowColor,
              borderColor: Color.fromRGBO(255, 184, 0, 0),
              textColor: Colors.white,
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
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
        ),
      ),
    );
  }
}
