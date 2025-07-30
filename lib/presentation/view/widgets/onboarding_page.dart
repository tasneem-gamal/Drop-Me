import 'package:dropme/core/theming/styles.dart';
import 'package:dropme/core/utils/spacing.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key, required this.image, required this.text,
  });

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image),
        verticalSpace(context, 30),
        Text(
          text,
          textAlign: TextAlign.center,
          style: CustomTextStyles.font24WhiteMedium(context),
        )
      ],
    );
  }
}