

import 'package:bloc/bloc.dart';
import 'package:pointscounter/cubit/counter_state.dart';

class CounterCubit extends Cubit <CounterState>
{
  CounterCubit() : super(CounterAIncrementState());

  int counter1 = 0;
  int counter2 = 0;
  

  void TeamIncrement({required String team , required int buttomNumber})
  {
    if (team == 'A') {
      counter1 += buttomNumber;
      emit(CounterAIncrementState());
      
    }
    else 
    {
      counter2 += buttomNumber ;
      emit(CounterBIncrementState());
    }
  }
  
}