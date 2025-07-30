import 'package:bloc/bloc.dart';
import 'package:dropme/data/data_source/reward_service.dart';
import 'package:dropme/data/models/reward_model.dart';

part 'rewards_state.dart';

class RewardsCubit extends Cubit<RewardsState> {
  RewardsCubit() : super(RewardsInitial());

  Future<void> loadRewards() async {
    emit(RewardLoading());

    try {
      final rewards = await RewardService.fetchRewards();
      emit(RewardsLoaded(rewards));
    } catch (e) {
      emit(RewardsError('Failed to load rewards'));
    }
  }
}
