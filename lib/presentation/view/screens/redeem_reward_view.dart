import 'package:dropme/core/theming/colors.dart';
import 'package:dropme/core/theming/styles.dart';
import 'package:dropme/core/utils/constants.dart';
import 'package:dropme/core/utils/extensions.dart';
import 'package:dropme/core/utils/spacing.dart';
import 'package:dropme/core/widgets/custom_app_button.dart';
import 'package:dropme/data/models/reward_model.dart';
import 'package:dropme/presentation/controllers/points/points_cubit.dart';
import 'package:dropme/presentation/view/widgets/redeem_alert_dialog.dart';
import 'package:dropme/presentation/view/widgets/reward_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RedeemRewardView extends StatelessWidget {
  const RedeemRewardView({super.key, required this.reward});
  final RewardModel reward;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true),
      body: RedeemRewardViewBody(reward: reward),
    );
  }
}

class RedeemRewardViewBody extends StatelessWidget {
  const RedeemRewardViewBody({super.key, required this.reward});
  final RewardModel reward;

  @override
  Widget build(BuildContext context) {
    return BlocListener<PointsCubit, PointsState>(
      listener: (context, state) {
    if (state is PointsUpdated) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Reward redeemed successfully!'),
          backgroundColor: ColorsManager.mainColor
        ),
      );
      context.pop();
    } else if (state is PointsError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(state.message)),
      );
    }
  },
      child: Padding(
        padding: Constants.appPadding,
        child: Column(
          children: [
            const Spacer(),
            RewardIcon(reward: reward),
            verticalSpace(context, 16),
            Text(reward.name, style: CustomTextStyles.font24BlackMedium(context)),
            verticalSpace(context, 12),
            Text(reward.description,
                style: CustomTextStyles.font16BlackMedium(context),
                textAlign: TextAlign.center),
            verticalSpace(context, 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.monetization_on, color: Colors.orange),
                const SizedBox(width: 8),
                Text(
                  '${reward.cost}',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Spacer(),
            CustomAppButton(
              btnText: 'Redeem',
              onPressed: () {
                final state = context.read<PointsCubit>().state;
                if (state is PointsUpdated) {
                  if (state.totalPoints >= reward.cost) {
                    showDialog(
                      context: context,
                      builder:
                          (context) => RedeemAlertDialog(
                            rewardName: reward.name,
                            points: reward.cost,
                            onConfirmed: () {
                              context.pop();
                              context.read<PointsCubit>().expensePoints(
                                reward.cost,
                              );
                            },
                          ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "You don't have enough points to redeem this reward.",
                        ),
                      ),
                    );
                  }
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
