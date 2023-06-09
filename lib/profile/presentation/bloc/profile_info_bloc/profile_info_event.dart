part of 'profile_info_bloc.dart';

abstract class ProfileInfoEvent extends Equatable {
  const ProfileInfoEvent();

  @override
  List<Object> get props => [];
}

class ProfileAddedEvent extends ProfileInfoEvent {
  ProfileModel profileModel;
  ProfileAddedEvent(this.profileModel);
}

class FetchStoredProfile extends ProfileInfoEvent {}
