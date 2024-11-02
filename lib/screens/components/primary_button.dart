import 'package:flutter/material.dart';
import 'package:google_bookmark/theme.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.text, required this.onTap});
  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: PrimaryButtonProperties.height,
        padding: const EdgeInsets.only(
          left: 56.0,
          right: 56.0,
          top: 16,
          bottom: 16,
        ),
        decoration: PrimaryButtonProperties.boxDecoration,
        child: Text(
          text,
          style: PrimaryButtonProperties.textStyle,
        ),
      ),
    );
  }
}

class PrimaryButtonIcon extends StatelessWidget {
  const PrimaryButtonIcon(
      {super.key, required this.text, required this.icon, required this.onTap});
  final String text;
  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: PrimaryButtonIconProperties.height,
        width: PrimaryButtonIconProperties.width,
        decoration: PrimaryButtonIconProperties.boxDecoration,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: PrimaryButtonIconProperties.textStyle,
                ),
                Icon(icon, color: PrimaryButtonIconProperties.iconColor),
              ],
            ),
          ),
        ));
  }
}
