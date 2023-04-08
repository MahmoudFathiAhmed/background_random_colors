part of 'color_bloc.dart';
///color Event
abstract class ColorEvent extends Equatable {
  @override
  List<Object> get props => [];
  ///constructor
  const ColorEvent();

}
///generate Color Event
class GenerateColorEvent extends ColorEvent {}
