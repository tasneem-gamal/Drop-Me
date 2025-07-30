import 'package:dropme/core/theming/colors.dart';
import 'package:dropme/data/models/reward_model.dart';
import 'package:flutter/material.dart';

class RewardIcon extends StatelessWidget {
  const RewardIcon({
    super.key, required this.reward,
  });

  final RewardModel reward;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: ColorsManager.mainColor,
      ),
      child: Icon(reward.icon, color: Colors.white),
    );
  }
}
