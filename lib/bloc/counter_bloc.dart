import 'counter_event.dart';
import 'counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(count: 0)) {
    on<CounterIncrementPressed>((event, emit) {
      emit(CounterState(count:  state.count + 1));
    });
    on<CounterDecrementPressed>((event, emit) {
      emit(CounterState(count:  state.count - 1));
    });
  }
}
