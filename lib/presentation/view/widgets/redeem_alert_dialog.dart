import 'package:dropme/core/theming/colors.dart';
import 'package:dropme/core/theming/styles.dart';
import 'package:dropme/core/utils/extensions.dart';
import 'package:dropme/core/utils/spacing.dart';
import 'package:dropme/core/widgets/custom_app_button.dart';
import 'package:flutter/material.dart';

class RedeemAlertDialog extends StatelessWidget {
  final String rewardName;
  final int points;

  const RedeemAlertDialog({
    super.key,
    required this.rewardName,
    required this.points,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      insetPadding: const EdgeInsets.symmetric(horizontal: 30),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xFFE8F5E9),
              child: Icon(Icons.card_giftcard, size: 30, color: Colors.green),
            ),
            verticalSpace(context, 12),
            Text(
              'Confirm Redemption',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            verticalSpace(context, 12),
            Text(
              'Do you want to redeem "$rewardName" for $points points?',
              textAlign: TextAlign.center,
              style: CustomTextStyles.font16BlackMedium(context),
            ),
            verticalSpace(context, 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () => context.pop(), 
                    child: Text('Cancel', style: TextStyle(color: ColorsManager.lightGray),)
                  ),
                ),
                verticalSpace(context, 16),
                Expanded(
                  child: CustomAppButton(
                    btnText: 'Confirm',
                    buttonHeight: 60,
                    buttonWidth: 50,
                    onPressed: (){},
                  )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
