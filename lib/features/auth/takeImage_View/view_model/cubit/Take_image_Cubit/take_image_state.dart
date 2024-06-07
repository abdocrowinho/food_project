part of 'take_image_cubit.dart';

@immutable
sealed class TakeImageState {}

final class TakeImageInitial extends TakeImageState {}

final class Loading extends TakeImageState {}

final class Null extends TakeImageState {}

final class NotNull extends TakeImageState {
  final String pathImage;

  NotNull({required this.pathImage});
}
