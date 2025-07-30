
import 'package:dropme/data/data_source/reward_service.dart';
import 'package:dropme/presentation/controllers/points/points_cubit.dart';
import 'package:dropme/presentation/controllers/rewards/rewards_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUpGetIt(){
  getIt.registerSingleton<RewardService>(RewardService());
  getIt.registerFactory<RewardsCubit>(() => RewardsCubit());

  getIt.registerFactory<PointsCubit>(() => PointsCubit());


}