import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_project/bloc/counter_event.dart';
import 'package:flutter_bloc_project/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterIncrementEvent, CounterState> {
  CounterBloc() : super(CounterState(counter: 0)) {
    on<CounterIncrementEvent>(
      (event, emit) {
        emit(CounterState(counter: state.counter + 1));
      },
    );
  }
}
