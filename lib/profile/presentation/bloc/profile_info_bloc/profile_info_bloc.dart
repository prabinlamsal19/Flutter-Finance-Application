import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:personal_finance/profile/data/models/profile_model.dart';
import 'package:personal_finance/profile/data/repositories/local_storage_profile.dart';

part 'profile_info_event.dart';
part 'profile_info_state.dart';

class ProfileInfoBloc extends Bloc<ProfileInfoEvent, ProfileInfoState> {
  ProfileInfoBloc() : super(ProfileInfoInitial()) {
    on<FetchStoredProfile>(
      (event, emit) async {
        emit(ProfileLoadingState());
        final ProfileModel? alreadyStoredProfile =
            await displayStoredProfiles();
        emit(ProfileAddedState(alreadyStoredProfile));
      },
    );

    on<ProfileAddedEvent>((event, emit) async {
      emit(ProfileLoadingState());
      await storeProfileLocally(event.profileModel);
      final storedProfile = await displayStoredProfiles();
      emit(ProfileAddedState(storedProfile));
    });
  }
}
