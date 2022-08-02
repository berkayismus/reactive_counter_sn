import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class AppBarColorState extends Equatable {
  final Color backColor;

  const AppBarColorState({required this.backColor});

  factory AppBarColorState.initial() {
    return const AppBarColorState(backColor: Colors.blue);
  }

  @override
  List<Object> get props => [backColor];

  AppBarColorState copyWith({
    Color? backColor,
  }) {
    return AppBarColorState(
      backColor: backColor ?? this.backColor,
    );
  }

  @override
  String toString() => 'AppBarColorState(backColor: $backColor)';
}
