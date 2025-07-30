import 'package:dropme/core/theming/colors.dart';
import 'package:dropme/core/utils/shared_preference_helper.dart';
import 'package:dropme/presentation/controllers/onboarding_controller.dart';
import 'package:dropme/presentation/view/screens/qr_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingNextButton extends StatefulWidget {
  const OnboardingNextButton({super.key});

  @override
  State<OnboardingNextButton> createState() => _OnboardingNextButtonState();
}

class _OnboardingNextButtonState extends State<OnboardingNextButton> {

  double progress = 0.0;
  final controller = OnboardingController.instance;

  void _handleNext() {
    setState(() {
      if (progress < 1.0) {
        progress += 0.5; 
      }
    });
    controller.nextPage();
  }
  
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.currentPageIndex.value == 2) {
        return Align(
          alignment: Alignment.bottomRight,
          child: ElevatedButton(
            onPressed: () async{
              await SharedPreferenceHelper.setOnboardingSeen();
              Get.offAll(() => QrScreen());
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsManager.mainColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text("Done", style: TextStyle(color: Colors.white)),
            ),
          ),
        );
      } else {
        return Align(
          alignment: Alignment.bottomRight,
          child: GestureDetector(
            onTap: _handleNext,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 70,
                  width: 70,
                  child: CircularProgressIndicator(
                    value: progress,
                    strokeWidth: 4,
                    backgroundColor: ColorsManager.moreLightGray,
                    valueColor: const AlwaysStoppedAnimation<Color>(ColorsManager.mainColor),
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    color: ColorsManager.mainColor,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        );
      }
    });
  }
}