import 'package:dropme/core/theming/colors.dart';
import 'package:dropme/core/theming/styles.dart';
import 'package:dropme/core/utils/spacing.dart';
import 'package:dropme/data/models/reward_model.dart';
import 'package:dropme/presentation/view/screens/redeem_reward_view.dart';
import 'package:dropme/presentation/view/widgets/reward_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RewardItem extends StatelessWidget {
  const RewardItem({super.key, required this.reward});

  final RewardModel reward;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => RedeemRewardView(reward: reward,));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Container(
          height: 100,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: ColorsManager.whiteShade,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    RewardIcon(reward: reward),
                    horizontalSpace(context, 12),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            reward.name,
                            style: CustomTextStyles.font16BlackMedium(context),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            reward.description,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.font12BlackMedium(context),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.monetization_on, color: Colors.orange),
                  const SizedBox(width: 4),
                  Text(
                    '${reward.cost}',
                    style: CustomTextStyles.font16MainColorMedium(context)
                        .copyWith(color: Colors.orange),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
