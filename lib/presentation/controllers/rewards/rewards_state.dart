part of 'rewards_cubit.dart';

abstract class RewardsState {}

class RewardsInitial extends RewardsState {}

class RewardLoading extends RewardsState {}

class RewardsLoaded extends RewardsState {
  final List<RewardModel> rewards;

  RewardsLoaded(this.rewards);
}

class RewardsError extends RewardsState {
  final String message;

  RewardsError(this.message);
}
