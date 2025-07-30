import 'package:dropme/data/models/reward_model.dart';
import 'package:dropme/presentation/view/widgets/reward_item.dart';
import 'package:flutter/material.dart';

class RewardItemList extends StatelessWidget {
  const RewardItemList({
    super.key, required this.rewards,
  });
  
  final List<RewardModel> rewards;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => RewardItem(
          reward: rewards[index],
        ),
        childCount: rewards.length
      )
    );
  }
}
