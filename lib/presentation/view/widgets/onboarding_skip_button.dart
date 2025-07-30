import 'package:dropme/core/theming/styles.dart';
import 'package:dropme/presentation/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: TextButton(
        onPressed: (){
          OnboardingController.instance.skipToLastPage();
        }, 
        child: Text(
          'Skip',
          style: CustomTextStyles.font16MainColorMedium(context),
        )
      ),
    );
  }
}