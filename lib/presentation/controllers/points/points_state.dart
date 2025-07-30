part of 'points_cubit.dart';

abstract class PointsState {}

class PointsInitial extends PointsState {}

class PointsLoading extends PointsState {}

class PointsUpdated extends PointsState {
  final int totalPoints;
  PointsUpdated(this.totalPoints);
}

class PointsError extends PointsState {
  final String message;
  PointsError(this.message);
}
