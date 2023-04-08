import 'package:background_random_colors/core/utils/app_double_numbers.dart';
import 'package:background_random_colors/core/utils/app_strings.dart';
import 'package:background_random_colors/core/utils/color_manager.dart';
import 'package:background_random_colors/modules/background_random_colors/bloc/color_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///Background color Screen => stateless widget
class BackgroundRandomColorsScreen extends StatelessWidget {
  ///constructor
  const BackgroundRandomColorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ColorBloc(),
      child: BlocBuilder<ColorBloc, ColorState>(
        builder: (context, colorState) {
          final Color backgroundColor = colorState is ColorGeneratedState
              ? colorState.color
              : ColorManager.white;

          return GestureDetector(
            onTap: () {
              context.read<ColorBloc>().add(GenerateColorEvent());
            },
            child: Scaffold(
              backgroundColor: backgroundColor,
              body: const Center(
                child: Text(
                  AppStrings.helloThere,
                  style: TextStyle(
                    fontSize: AppDoubleNumbers.s24,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
