import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finance/profile/presentation/bloc/profile_info_bloc/profile_info_bloc.dart';
import 'package:personal_finance/profile/presentation/widgets/profile_info_tile.dart';

import '../../data/models/profile_model.dart';
import '../../data/repositories/local_storage_profile.dart';

class ProfileUI extends StatefulWidget {
  ProfileModel? profileModel;
  ProfileUI({super.key, required this.profileModel});

  @override
  // ignore: no_logic_in_create_state
  State<ProfileUI> createState() => _ProfileUIState(profileModel: profileModel);
}

class _ProfileUIState extends State<ProfileUI> {
  ProfileModel? profileModel;

  _ProfileUIState({required this.profileModel});

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  DateTime? selectedDate;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.5,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  if (profileModel == null) {
                    return Container(
                      height: 50,
                    );
                  } else {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 250,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.blue, Colors.purple],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              // Positioned(
                              //   top: 40,
                              //   left: 16,
                              //   child: IconButton(
                              //     icon: const Icon(Icons.arrow_back,
                              //         color: Colors.white),
                              //     onPressed: () {
                              //       // Handle back button press
                              //     },
                              //   ),
                              // ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const CircleAvatar(
                                    radius: 60,
                                    backgroundImage:
                                        AssetImage('assets/bgg.jpeg'),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    profileModel!.name,
                                    style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'Flutter Developer',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              ProfileInfoTile(
                                icon: Icons.email,
                                title: 'Email',
                                subtitle: profileModel!.email,
                              ),
                              ProfileInfoTile(
                                icon: Icons.phone,
                                title: 'Phone',
                                subtitle: profileModel!.phoneNumber.toString(),
                              ),
                              ProfileInfoTile(
                                icon: Icons.location_on,
                                title: 'Location',
                                subtitle: profileModel!.location,
                              ),
                              ProfileInfoTile(
                                icon: Icons.calendar_today,
                                title: 'Birthday',
                                subtitle: profileModel!.birthday,
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }
                },
              ),
            ),

            //insert code here
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SingleChildScrollView(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            TextField(
                              controller: nameController,
                              decoration:
                                  const InputDecoration(labelText: 'Name'),
                            ),
                            TextField(
                              controller: emailController,
                              decoration:
                                  const InputDecoration(labelText: 'Email'),
                            ),
                            TextField(
                              controller: locationController,
                              decoration:
                                  const InputDecoration(labelText: 'Location'),
                            ),
                            TextField(
                              controller: phoneController,
                              keyboardType: TextInputType.phone,
                              decoration:
                                  const InputDecoration(labelText: 'Phone'),
                            ),
                            TextField(
                              controller: dateController,
                              readOnly: true,
                              onTap: () async {
                                final DateTime? selected = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime.now(),
                                );

                                if (selected != null) {
                                  setState(() {
                                    selectedDate = selected;
                                    dateController.text =
                                        selectedDate!.toString();
                                  });
                                }
                              },
                              decoration:
                                  const InputDecoration(labelText: 'Date'),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                String name = nameController.text;
                                String email = emailController.text;
                                String location = locationController.text;
                                String phone = phoneController.text;
                                String birthday = selectedDate != null
                                    ? selectedDate!.toString()
                                    : ''; // Convert DateTime to string
                                ProfileModel profileInformation = ProfileModel(
                                  name: name,
                                  email: email,
                                  phoneNumber: int.parse(phone),
                                  location: location,
                                  birthday: birthday,
                                );

                                try {
                                  BlocProvider.of<ProfileInfoBloc>(context).add(
                                      ProfileAddedEvent(profileInformation));
                                  AutoRouter.of(context).pop();
                                } catch (error) {
                                  print(error);
                                }
                              },
                              child: const Text('Submit'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                textStyle: const TextStyle(fontSize: 18),
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }

  // @override
  // void dispose() {
  //   nameController.dispose();
  //   emailController.dispose();
  //   locationController.dispose();
  //   phoneController.dispose();
  //   dateController.dispose();
  //   super.dispose();
  // }
}
