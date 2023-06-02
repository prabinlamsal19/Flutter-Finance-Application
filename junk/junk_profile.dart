// import 'package:auto_route/annotations.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:personal_finance/profile/presentation/widgets/profile_page_ui.dart';
// import '../../data/models/profile_model.dart';
// import '../../data/repositories/local_storage_profile.dart';
// import '../bloc/profile_info_bloc/profile_info_bloc.dart';
// import '../widgets/splash_screen.dart';

// @RoutePage()
// class ProfilePage extends StatefulWidget {
//   const ProfilePage({Key? key}) : super(key: key);

//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   ProfileModel? profileModel;

//   @override
//   void initState() {
//     super.initState();
//     displayIfAlreadyStored();
//   }

//   void displayIfAlreadyStored() async {
//     profileModel = await displayStoredProfiles();
//   }

//   @override
//   Widget build(BuildContext context) {
//     print(profileModel?.name.toString());
//     return BlocBuilder<ProfileInfoBloc, ProfileInfoState>(
//       builder: (context, state) {
//         if (state is ProfileInfoInitial) {
//           // return FutureBuilder<ProfileModel?>(
//           //   future: checkStoredProfiles(),
//           //   builder: (context, snapshot) {
//           //     if (snapshot.connectionState == ConnectionState.waiting) {
//           //       return const CircularProgressIndicator();
//           //     } else if (snapshot.hasError) {
//           //       return Text("Error: ${snapshot.error}");
//           //     } else {
//           //       final profileModel = snapshot.data;
//           //       return ProfileUI(profileModel: profileModel);
//           //     }
//           //   },
//           // );
//           return ProfileUI(profileModel: profileModel);
//         } else if (state is ProfileLoadingState) {
//           return SplashScreen();
//         } else if (state is ProfileAddedState) {
//           return ProfileUI(profileModel: state.profileModel);
//         } else {
//           return const Text(
//               "Sadly, we encountered an error from profile_page.");
//         }
//       },
//     );
//   }

//   Future<ProfileModel?> checkStoredProfiles() async {
//     final isStored = await checkIfStored();
//     if (isStored == false) {
//       return null;
//     } else {
//       return await displayStoredProfiles();
//     }
//   }
// }
