import 'package:dropme/core/theming/colors.dart';
import 'package:dropme/presentation/controllers/rewards/rewards_cubit.dart';
import 'package:dropme/presentation/view/widgets/reward_item_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RewardsBlocBuilder extends StatelessWidget {
  const RewardsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RewardsCubit, RewardsState>(
      builder: (context, state) {
        if(state is RewardLoading){
          return SliverToBoxAdapter(child: Center(child: CircularProgressIndicator(color: ColorsManager.mainColor,)));
        } else if (state is RewardsLoaded){
          return RewardItemList(
            rewards: state.rewards,
          );
        } else if(state is RewardsError){
          return SliverToBoxAdapter(child: Center(child: Text(state.message)));
        } else {
          return SliverToBoxAdapter(child: SizedBox.shrink());
        }
      },
    );
  }
}