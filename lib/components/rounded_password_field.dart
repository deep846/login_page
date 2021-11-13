import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_field_container.dart';
import 'package:flutter_auth/constants.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  @override
  Widget build(BuildContext context) {
    bool change = true;
    return TextFieldContainer(
      child: TextFormField(
        obscureText: change,
        onChanged: widget.onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          // suffixIcon: GestureDetector(
          // onTap: (){
          //   setState(() {
          //     change = change?false:true;
          //   });
          // },
          //   child: Icon(
          //     Icons.visibility,
          //     color: kPrimaryColor,
          //   ),
          // ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
