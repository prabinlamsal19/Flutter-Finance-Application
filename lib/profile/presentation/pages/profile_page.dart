import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finance/profile/presentation/widgets/profile_page_ui.dart';
import '../../data/models/profile_model.dart';
import '../../data/repositories/local_storage_profile.dart';
import '../bloc/profile_info_bloc/profile_info_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileInfoBloc, ProfileInfoState>(
      builder: (context, state) {
        if (state is ProfileInfoInitial) {
          return FutureBuilder<bool>(
            future: checkIfStored(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text("Error: ${snapshot.error}");
              } else {
                final isStored = snapshot.data;
                if (isStored == false) {
                  return ProfileUI(profileModel: null);
                } else {
                  return FutureBuilder<ProfileModel?>(
                    future: displayStoredProfiles(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator();
                      } else if (snapshot.hasError) {
                        return Text("Error: ${snapshot.error}");
                      } else {
                        final profileModel = snapshot.data;
                        return ProfileUI(profileModel: profileModel);
                      }
                    },
                  );
                }
              }
            },
          );
        } else if (state is ProfileAddedState) {
          return ProfileUI(profileModel: state.profileModel);
        } else {
          return const Text(
              "Sadly, we encountered an error from profile_page.");
        }
      },
    );
  }
}
