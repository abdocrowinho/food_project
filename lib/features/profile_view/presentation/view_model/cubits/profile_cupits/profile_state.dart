part of 'profile_cubit.dart';

@immutable
sealed class ProfileState {}

final class ProfileInitial extends ProfileState {}

final class ProfileImageLoading extends ProfileState {}

final class ProfileImageSuccssee extends ProfileState {}

final class ProfileImageStay extends ProfileState {}

final class ProfileImageFaliure extends ProfileState {
  final String errorMessage;
  ProfileImageFaliure(this.errorMessage);
}
