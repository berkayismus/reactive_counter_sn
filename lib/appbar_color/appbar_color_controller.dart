import 'package:flutter/material.dart';
import 'package:reactive_counter_sn/appbar_color/appbar_color_state.dart';
import 'package:state_notifier/state_notifier.dart';

class AppBarColorController extends StateNotifier<AppBarColorState> {
  AppBarColorController() : super(AppBarColorState.initial());

  void changeBackColor() {
    if (state.backColor == Colors.black) {
      state = state.copyWith(backColor: Colors.red);
    } else if (state.backColor == Colors.red) {
      state = state.copyWith(backColor: Colors.blue);
    } else {
      state = state.copyWith(backColor: Colors.black);
    }
  }
}
