import 'package:dropme/core/theming/colors.dart';
import 'package:dropme/core/theming/styles.dart';
import 'package:dropme/core/utils/constants.dart';
import 'package:dropme/core/utils/spacing.dart';
import 'package:dropme/core/widgets/custom_app_button.dart';
import 'package:dropme/presentation/view/screens/confirm_scan_view.dart';
import 'package:dropme/presentation/view/screens/rewards_view.dart';
import 'package:dropme/presentation/view/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QrView extends StatefulWidget {
  const QrView({super.key});

  @override
  State<QrView> createState() => _QrViewState();
}

class _QrViewState extends State<QrView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.mainColor,
        title: Text(
          'Drop Me',
          style: CustomTextStyles.font24WhiteMedium(context),
        ),
      ),
      body: _selectedIndex == 0 ? QrViewBody() : RewardsView(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

class QrViewBody extends StatefulWidget {
  const QrViewBody({super.key});

  @override
  State<QrViewBody> createState() => _QrViewBodyState();
}

class _QrViewBodyState extends State<QrViewBody> {
  bool _isLoading = false;

  void _scanProcess() async {
    setState(() {
      _isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      _isLoading = false;
    });

    Get.to(() => ConfirmScanView());
  }



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.35,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.qr_code, size: 80, color: ColorsManager.mainColor,),
              verticalSpace(context, 16),
              Text(
                'Ready to scan our machine?',
                style: CustomTextStyles.font18MainColorMedium(context).copyWith(
                  color: Colors.black
                ),
              ),
              Text(
                'One scan away from unlocking rewards let’s go',
                textAlign: TextAlign.center,
                style: CustomTextStyles.font18WhiteMedium(context).copyWith(
                  color: Colors.black
                ),
              ),
              verticalSpace(context, 32),
              _isLoading
                  ? const CircularProgressIndicator(
                    color: ColorsManager.mainColor,
                  )
                  : CustomAppButton(
                    btnText: 'Scan',
                    onPressed: _scanProcess,
                    buttonWidth: MediaQuery.of(context).size.width * 0.5,
                  ),
            ],
          ),
        ),
      ),
    );
  }

}
