import 'package:dropme/core/theming/colors.dart';
import 'package:dropme/core/utils/constants.dart';
import 'package:dropme/presentation/controllers/onboarding_controller.dart';
import 'package:dropme/presentation/view/widgets/onboarding_next_button.dart';
import 'package:dropme/presentation/view/widgets/onboarding_page.dart' show OnboardingPage;
import 'package:dropme/presentation/view/widgets/onboarding_skip_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorsManager.mainColor,
      body: SafeArea(child: OnboardingViewBody()),
    );
  }
}

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Padding(
      padding: Constants.appPadding,
      child: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              OnboardingPage(
                image: 'assets/images/machine.png',
                text: "Meet Drop Me – Egypt’s first smart recycling machine",
              ),
              OnboardingPage(
                image: 'assets/images/scan.png',
                text: 'Scan the QR code on the machine to start your recycling session',
              ),
              OnboardingPage(
                image: 'assets/images/rewards.png',
                text: "Earn points for every item you recycle – it’s that easy!",
              ),
            ],
          ),
          OnboardingSkipButton(),
          OnboardingNextButton()
        ],
      ),
    );
  }
}

