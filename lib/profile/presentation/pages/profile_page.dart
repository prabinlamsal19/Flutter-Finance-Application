import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finance/profile/presentation/widgets/profile_page_ui.dart';
import '../../data/models/profile_model.dart';
import '../../data/repositories/local_storage_profile.dart';
import '../bloc/profile_info_bloc/profile_info_bloc.dart';
import '../widgets/splash_screen.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  // void displayIfAlreadyStored() async {
  @override
  Widget build(BuildContext context) {
    // print(profileModel?.name.toString());
    return BlocBuilder<ProfileInfoBloc, ProfileInfoState>(
      builder: (context, state) {
        if (state is ProfileInfoInitial) {
          return ProfileUI(profileModel: null);
        } else if (state is ProfileLoadingState) {
          return SplashScreen();
        } else if (state is ProfileLoadedState) {
          return ProfileUI(profileModel: state.profileModel);
        } else if (state is ProfileAddedState) {
          return ProfileUI(profileModel: state.profileModel);
        } else {
          return const Text(
              "Sadly, we encountered an error from profile_page.");
        }
      },
    );
  }

  Future<ProfileModel?> checkStoredProfiles() async {
    final isStored = await checkIfStored();
    if (isStored == false) {
      return null;
    } else {
      return await displayStoredProfiles();
    }
  }
}

// import 'package:auto_route/annotations.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:personal_finance/profile/presentation/widgets/profile_page_ui.dart';
// import '../../data/models/profile_model.dart';
// import '../../data/repositories/local_storage_profile.dart';
// import '../bloc/profile_info_bloc/profile_info_bloc.dart';
// import '../widgets/splash_screen.dart';

// @RoutePage()
// class ProfilePage extends StatelessWidget {
//   ProfilePage({Key? key}) : super(key: key);

//   Future<ProfileModel?>? _profileModelFuture; 

//   //initially, load garxa if stored locally, if null , if not null 


//   // @override
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<ProfileModel?>(
//       future: displayStoredProfiles(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return SplashScreen();
//         } else if (snapshot.hasError) {
//           return const Text(
//               "Sadly, we encountered an error from profile_page.");
//         } else {
//           final profileModel = snapshot.data;
//           return BlocBuilder<ProfileInfoBloc, ProfileInfoState>(
//             builder: (context, state) {
//               if (state is ProfileInfoInitial) { 
//                 return ProfileUI(profileModel: profileModel);
//               } else if (state is ProfileLoadingState) {
//                 return SplashScreen();
//               } else if (state is ProfileAddedState) {
//                 return ProfileUI(profileModel: state.profileModel);
//               } else {
//                 return const Text(
//                   "Sadly, we encountered an error from profile_page.",
//                 );
//               }
//             },
//           );
//         }
//       },
//     );
//   }
// }

