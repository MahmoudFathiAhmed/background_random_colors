part of 'color_bloc.dart';
///base color state
abstract class ColorState extends Equatable {
  ///color state constructor
  const ColorState();
}
///color initial state
class ColorInitial extends ColorState {
  @override
  List<Object> get props => [];
}
///color generate state
class ColorGeneratedState extends ColorState {
  ///it takes color in its constructor
  final Color color;
    @override
  List<Object> get props => [color];
  ///constructor
  const ColorGeneratedState({required this.color});

}
