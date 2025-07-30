import 'package:dropme/core/theming/styles.dart';
import 'package:dropme/core/utils/constants.dart';
import 'package:dropme/core/utils/spacing.dart';
import 'package:dropme/presentation/view/widgets/rewards_bloc_builder.dart';
import 'package:dropme/presentation/view/widgets/total_points_container.dart';
import 'package:flutter/material.dart';

class RewardsView extends StatelessWidget {
  const RewardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: RewardsViewBody());
  }
}

class RewardsViewBody extends StatelessWidget {
  const RewardsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: TotalPointsContainer()),
          SliverToBoxAdapter(child: verticalSpace(context, 24)),
          SliverToBoxAdapter(
            child: Text(
              'Rewards',
              style: CustomTextStyles.font16BlackMedium(context),
            ),
          ),
          SliverToBoxAdapter(child: verticalSpace(context, 16)),
          RewardsBlocBuilder(),
        ],
      ),
    );
  }
}
