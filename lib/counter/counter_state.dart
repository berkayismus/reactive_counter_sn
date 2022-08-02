import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int counter;
  final int incrementSize;

  const CounterState({
    required this.counter,
    required this.incrementSize,
  });

  factory CounterState.initial() {
    return const CounterState(counter: 0, incrementSize: 1);
  }

  @override
  List<Object> get props => [counter, incrementSize];

  CounterState copyWith({
    int? counter,
    int? incrementSize,
  }) {
    return CounterState(
      counter: counter ?? this.counter,
      incrementSize: incrementSize ?? this.incrementSize,
    );
  }

  @override
  String toString() =>
      'CounterState(counter: $counter, incrementSize: $incrementSize)';
}
