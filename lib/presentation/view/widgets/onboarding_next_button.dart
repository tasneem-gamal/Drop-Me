import 'package:dropme/presentation/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

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
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
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
                    backgroundColor: Colors.grey.shade200,
                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
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