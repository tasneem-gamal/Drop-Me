
import 'package:dropme/core/utils/shared_preference_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'points_state.dart';

class PointsCubit extends Cubit<PointsState> {
  PointsCubit() : super(PointsInitial()) {
    loadPointsFromPrefs();
  }

  Future<void> loadPointsFromPrefs() async {
    emit(PointsLoading());
    try {
      final savedPoints = await SharedPreferenceHelper.getPoints();
      emit(PointsUpdated(savedPoints));
    } catch (e) {
      emit(PointsError("Failed to load points"));
    }
  }

  Future<void> earnPoints(int points) async {
    if (state is PointsUpdated) {
      final current = (state as PointsUpdated).totalPoints;
      final newPoints = current + points;
      emit(PointsUpdated(newPoints));
      await SharedPreferenceHelper.savePoints(newPoints);
    }
  }

  Future<void> expensePoints(int points) async {
    if (state is PointsUpdated) {
      final current = (state as PointsUpdated).totalPoints;
      final newPoints = current - points;
      emit(PointsUpdated(newPoints));
      await SharedPreferenceHelper.savePoints(newPoints);
    }
  }
}

