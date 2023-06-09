import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finance/profile/data/models/profile_model.dart';
import 'package:personal_finance/profile/data/repositories/local_storage_profile.dart';

part 'profile_info_event.dart';
part 'profile_info_state.dart';

class ProfileInfoBloc extends Bloc<ProfileInfoEvent, ProfileInfoState> {
  ProfileInfoBloc() : super(ProfileInfoInitial()) {
    void blocDisplayStoredProfiles() {
      displayStoredProfiles();
    }

    // on<ProfileLoadedEvent>((event, emit) async {
    //   //store the data locally (override the previous one)
    //   emit(ProfileLoadingState());

    //   //get the new data
    //   final storedProfile =
    //       await displayStoredProfiles(); //in this case null won't be returned because profile is added

    //   //emit the profileaddedstate with the new data
    //   emit(ProfileLoadedState(storedProfile!));
    // });


    on<ProfileAddedEvent>((event, emit) async {
      //store the data locally (override the previous one)
      emit(ProfileLoadingState());
      await storeProfileLocally(event.profileModel);
      //get the new data
      final storedProfile =
          await displayStoredProfiles(); //in this case null won't be returned because profile is added
      //emit the profileaddedstate with the new data
      emit(ProfileAddedState(storedProfile!));
    });
  }
}
