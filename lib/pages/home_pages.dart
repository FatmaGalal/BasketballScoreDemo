import 'package:basketballscore/cubits/score_cubit/score_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ScoreCubit, ScoreState>(
      listener: (context, state) {
        // if (state is TeamAScoreIncremented) {
        //   teamAScore = BlocProvider.of<ScoreCubit>(context).teamAScore;
        // } else if (state is TeamBScoreIncremented) {
        //   teamBScore = BlocProvider.of<ScoreCubit>(context).teamBScore;
        // } else {}
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Basket Ball Score'),
            backgroundColor: Colors.orange,
          ),
          body: Column(
            children: [
              SizedBox(height: 26),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('Team A', style: TextStyle(fontSize: 40)),
                      Text(
                        '${BlocProvider.of<ScoreCubit>(context).teamAScore}',
                        style: TextStyle(fontSize: 100),
                      ),
                      SizedBox(height: 12),
                      CustomButton(
                        buttonText: 'Add 1 Point',
                        onPress: () {
                          BlocProvider.of<ScoreCubit>(
                            context,
                          ).incrementTeamAScore(1);
                        },
                      ),
                      SizedBox(height: 12),

                      CustomButton(
                        buttonText: 'Add 2 Points',
                        onPress: () {
                          BlocProvider.of<ScoreCubit>(
                            context,
                          ).incrementTeamAScore(2);
                        },
                      ),
                      SizedBox(height: 12),

                      CustomButton(
                        buttonText: 'Add 3 Points',
                        onPress: () {
                          BlocProvider.of<ScoreCubit>(
                            context,
                          ).incrementTeamAScore(3);
                        },
                      ),
                      SizedBox(height: 12),
                    ],
                  ),

                  SizedBox(
                    height: 500,
                    child: VerticalDivider(color: Colors.grey, thickness: 1),
                  ),

                  Column(
                    children: [
                      Text('Team B', style: TextStyle(fontSize: 40)),
                      Text(
                        '${BlocProvider.of<ScoreCubit>(context).teamBScore}',
                        style: TextStyle(fontSize: 100),
                      ),
                      SizedBox(height: 12),
                      CustomButton(
                        buttonText: 'Add 1 Ponit',
                        onPress: () {
                          BlocProvider.of<ScoreCubit>(
                            context,
                          ).incrementTeamBScore(1);
                        },
                      ),
                      SizedBox(height: 12),
                      CustomButton(
                        buttonText: 'Add 2 Points',
                        onPress: () {
                          BlocProvider.of<ScoreCubit>(
                            context,
                          ).incrementTeamBScore(2);
                        },
                      ),
                      SizedBox(height: 12),
                      CustomButton(
                        buttonText: 'Add 3 Points',
                        onPress: () {
                          BlocProvider.of<ScoreCubit>(
                            context,
                          ).incrementTeamBScore(3);
                        },
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 112),
              CustomButton(
                buttonText: 'Reset Score',
                onPress: () {
                  BlocProvider.of<ScoreCubit>(context).resetScores();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onPress,
  });
  final String buttonText;
  final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,

      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10),
        ),
        minimumSize: Size(150, 70),
        backgroundColor: Colors.orange,
      ),
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
