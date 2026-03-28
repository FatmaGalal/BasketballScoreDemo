import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'score_state.dart';

class ScoreCubit extends Cubit<ScoreState> {
  ScoreCubit() : super(TeamAScoreIncremented());

  int teamAScore = 0;
  int teamBScore = 0;

  void incrementTeamAScore(int incrementValue) {
    teamAScore += incrementValue;
    emit(TeamAScoreIncremented());
  }

  void incrementTeamBScore(int incrementValue) {
    teamBScore += incrementValue;
    emit(TeamBScoreIncremented());
  }

  void resetScores() {
    teamAScore = 0;
    teamBScore = 0;
    emit(ScoreReset());
  }
}
