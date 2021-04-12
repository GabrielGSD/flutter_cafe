import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_field_container.dart';
import 'package:flutter_auth/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: lightWhiteColor,
        style: TextStyle(fontSize: 14, color: whiteColor),
        decoration: InputDecoration(
          hintText: "Senha",
          hintStyle: TextStyle(fontSize: 14, color: Colors.white),
          icon: Icon(
            Icons.lock,
            color: lightYellowColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: lightYellowColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
