part of 'profile_info_bloc.dart';

abstract class ProfileInfoState extends Equatable {
  const ProfileInfoState();

  @override
  List<Object> get props => [];
}

class ProfileInfoInitial extends ProfileInfoState {}

class ProfileAddedState extends ProfileInfoState {
  final ProfileModel profileModel;
  const ProfileAddedState(this.profileModel);
}

// class ProfileChangedState extends ProfileInfoState{}
