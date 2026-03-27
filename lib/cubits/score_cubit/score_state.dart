part of 'score_cubit.dart';

@immutable
sealed class ScoreState {}

final class TeamAScoreIncremented extends ScoreState {}

final class TeamBScoreIncremented extends ScoreState {}

final class ScoreReset extends ScoreState {}
