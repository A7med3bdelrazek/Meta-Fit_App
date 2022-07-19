import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta_fit_app/features/services/domain/states.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitialState());

//To be more easily when use this cubit in many place
  static CounterCubit get(BuildContext context) => BlocProvider.of(context);

  int counter = 1;

  void plus() {
    counter++;
    emit(CounterPlusState(counter));
  }

  void minus() {
    counter--;
    emit(CounterMinusState(counter));
  }
}
