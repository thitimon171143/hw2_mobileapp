import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  String title;
  Color colortext;
  String img;

  Register(this.img, this.title, this.colortext);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.person),
        focusColor: Colors.black,
        border: const OutlineInputBorder(),
        labelText: title,
        labelStyle:
            MaterialStateTextStyle.resolveWith((Set<MaterialState> states) {
          final Color color = states.contains(MaterialState.error)
              ? Theme.of(context).errorColor
              : Colors.blueGrey[200]!;

          return TextStyle(color: color, letterSpacing: 1.3);
        }),
      ),
      validator: (String? value) {
        if (value == null || value == '') {}
        return null;
      },
      autovalidateMode: AutovalidateMode.always,
    );
  }
}