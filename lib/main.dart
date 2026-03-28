import 'package:basketballscore/cubits/score_cubit/score_cubit.dart';
import 'package:basketballscore/pages/home_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BasketBallScore());
}

class BasketBallScore extends StatelessWidget {
  const BasketBallScore({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ScoreCubit(),

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Basket Ball Score',
        home: HomePages(),
      ),
    );
  }
}
