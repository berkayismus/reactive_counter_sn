import 'package:flutter/material.dart';
import 'package:state_notifier/state_notifier.dart';

import '../appbar_color/appbar_color_state.dart';
import 'counter_state.dart';

class CounterController extends StateNotifier<CounterState> with LocatorMixin {
  CounterController() : super(CounterState.initial());

  void increment() {
    state = state.copyWith(
      counter: state.counter + state.incrementSize,
    );
  }

  @override
  void update(Locator watch) {
    super.update(watch);

    final appBarState = watch<AppBarColorState>();

    if (appBarState.backColor == Colors.blue) {
      state = state.copyWith(incrementSize: 1);
    } else if (appBarState.backColor == Colors.black) {
      state = state.copyWith(incrementSize: 10);
    } else {
      state = state.copyWith(incrementSize: 50);
    }
  }
}
