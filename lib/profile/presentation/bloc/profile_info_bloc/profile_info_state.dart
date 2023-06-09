part of 'profile_info_bloc.dart';

abstract class ProfileInfoState {
  const ProfileInfoState();
}

class ProfileInfoInitial extends ProfileInfoState {}

class ProfileAddedState extends ProfileInfoState {
  final ProfileModel? profileModel;
  const ProfileAddedState(this.profileModel);
}

// class ProfileChangedState extends ProfileInfoState{}
class ProfileLoadingState extends ProfileInfoState {}
