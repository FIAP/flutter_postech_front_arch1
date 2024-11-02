import 'package:flutter/material.dart';
import 'package:google_bookmark/theme.dart';

class DisplayText extends StatelessWidget {
  const DisplayText(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Padding(padding: EdgeInsets.only(right: 8.0)),
        Text(
          text,
          style: DisplayTextProperties.textStyle,
        ),
        const Padding(padding: EdgeInsets.only(left: 8.0))
      ],
    );
  }
}
