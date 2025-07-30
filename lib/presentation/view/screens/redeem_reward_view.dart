import 'package:dropme/core/theming/styles.dart';
import 'package:dropme/core/utils/constants.dart';
import 'package:dropme/core/utils/spacing.dart';
import 'package:dropme/core/widgets/custom_app_button.dart';
import 'package:dropme/presentation/view/widgets/redeem_alert_dialog.dart';
import 'package:dropme/presentation/view/widgets/reward_icon.dart';
import 'package:flutter/material.dart';

class RedeemRewardView extends StatelessWidget {
  const RedeemRewardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true,),
      body: RedeemRewardViewBody(),
    );
  }
}

class RedeemRewardViewBody extends StatelessWidget {
  const RedeemRewardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: Column(
        children: [
          Spacer(),
          //RewardIcon(),
          verticalSpace(context, 16),
          Text(
            'reward.name',
            style: CustomTextStyles.font24BlackMedium(context),
          ),
          verticalSpace(context, 12),
          Text(
            'This reward helps you go green and save money! Redeem now and enjoy the benefits.',
            style: CustomTextStyles.font16BlackMedium(context),
            textAlign: TextAlign.center,
          ),
          verticalSpace(context, 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.monetization_on, color: Colors.orange),
              const SizedBox(width: 8),
              Text(
                '300 points',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Spacer(),
          CustomAppButton(
            btnText: 'Redeem', 
            onPressed: () {
              showDialog(
                    context: context,
                    builder: (context) => RedeemAlertDialog(
                      rewardName: 'Health',
                      points: 300,
                    ),
                  );
            }
          ),
        ],
      ),
    );
  }
}

