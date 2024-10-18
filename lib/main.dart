import 'package:flutter/material.dart';
import 'package:pointscounter/cubit/counter_cubit.dart';
import 'package:pointscounter/points_counter.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const PointsCounter());
}


class PointsCounter extends StatelessWidget {
  const PointsCounter({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
    
      child: MaterialApp(
            home: HomePage(),
          
          
            ),
    );
      

  }
}


