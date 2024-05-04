import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterEvent>((event, emit) {
      // Check the type of event
      if (event == CounterEvent.increment) {
        emit(state + 1); // Emit new state
      }
    });
  }
}