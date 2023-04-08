import 'dart:math';

import 'package:background_random_colors/core/utils/app_integers_numbers.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'color_event.dart';
part 'color_state.dart';

///color bloc has the the logic of background random colors screen
class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ///constructor
  ColorBloc() : super(ColorInitial()) {
    on<GenerateColorEvent>((event, emit) => generateRandomColor(emit));
  }

  ///function to generate random color
  void generateRandomColor(
    Emitter<ColorState> emit,
  ) {
    final random = Random();
    final color = Color.fromARGB(
      AppIntegersNumbers.i255,
      random.nextInt(AppIntegersNumbers.i255),
      random.nextInt(AppIntegersNumbers.i255),
      random.nextInt(AppIntegersNumbers.i255),
    );
    emit(ColorGeneratedState(color: color));
  }
}
