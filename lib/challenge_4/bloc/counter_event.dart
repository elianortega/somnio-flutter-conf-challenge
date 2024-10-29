part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent extends Equatable {
  const CounterEvent();
  @override
  List<Object> get props => [];
}

final class CounterIncremented extends CounterEvent {
  const CounterIncremented();
}
