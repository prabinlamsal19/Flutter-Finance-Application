import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finance/profile/presentation/widgets/profile_page_ui.dart';
import '../bloc/profile_info_bloc/profile_info_bloc.dart';
import '../widgets/splash_screen.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileInfoBloc, ProfileInfoState>(
      builder: (context, state) {
        if (state is ProfileInfoInitial) {
          BlocProvider.of<ProfileInfoBloc>(context).add(FetchStoredProfile());
          return SplashScreen();
        } else if (state is ProfileLoadingState) {
          return SplashScreen();
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
