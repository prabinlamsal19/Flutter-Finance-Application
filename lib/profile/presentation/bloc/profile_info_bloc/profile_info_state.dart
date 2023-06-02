part of 'profile_info_bloc.dart';

abstract class ProfileInfoState extends Equatable {
  const ProfileInfoState();

  @override
  List<Object> get props => [];
}

class ProfileInfoInitial extends ProfileInfoState {
  //display the data if availaible (?)
//do it in initstate lol
  //if no emit with null , the ProfileUI will handle the null case itself
}

class ProfileAddedState extends ProfileInfoState {
  final ProfileModel profileModel;
  const ProfileAddedState(this.profileModel);
}

// class ProfileChangedState extends ProfileInfoState{}
class ProfileLoadingState extends ProfileInfoState {}

class ProfileLoadedState extends ProfileInfoState {
  final ProfileModel profileModel;
  const ProfileLoadedState(this.profileModel);
}
