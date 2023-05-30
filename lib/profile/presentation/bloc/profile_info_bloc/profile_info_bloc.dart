import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:personal_finance/profile/data/models/profile_model.dart';

part 'profile_info_event.dart';
part 'profile_info_state.dart';

class ProfileInfoBloc extends Bloc<ProfileInfoEvent, ProfileInfoState> {
  ProfileInfoBloc() : super(ProfileInfoInitial()) {
    on<ProfileAddedEvent>((event, emit) async {
      // TODO: implement event handler
      emit(ProfileAddedState(event.profileModel));
    });
  }
}
