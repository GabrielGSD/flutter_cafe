import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_field_container.dart';
import 'package:flutter_auth/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText1;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText1,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: lightWhiteColor,
        style: TextStyle(fontSize: 14, color: whiteColor),
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: lightYellowColor,
          ),
          hintText: hintText1,
          hintStyle: TextStyle(fontSize: 14, color: Colors.white),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
