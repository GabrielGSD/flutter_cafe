import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/Welcome/components/background.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              "assets/icons/logo.svg",
              height: size.height * 0.45,
            ),
            Text(
              "Bem vindo ao Short Coffe!",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 24, color: whiteColor),
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              "A plataforma que encurta a distância\n entre o produtor de café e o comprador.",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  color: whiteColor),
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "ENTRAR",
              color: yellowColor,
              borderColor: Color.fromRGBO(255, 184, 0, 0),
              textColor: Colors.white,
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
            RoundedButton(
              text: "CADASTRAR",
              color: lightWhiteColor,
              borderColor: yellowColor,
              textColor: Colors.white,
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
