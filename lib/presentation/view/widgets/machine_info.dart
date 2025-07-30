import 'package:dropme/core/theming/colors.dart';
import 'package:flutter/material.dart';

class MachineInfo extends StatelessWidget {
  const MachineInfo({
    super.key, required this.title, required this.subTitle,
  });

  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: title,
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: subTitle,
            style: TextStyle(
              color: ColorsManager.mainColor, 
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}