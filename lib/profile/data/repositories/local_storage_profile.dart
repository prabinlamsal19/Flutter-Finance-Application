import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../models/profile_model.dart';

const storage = FlutterSecureStorage();

// for storing a single instance  of profile model
Future<void> storeProfileLocally(ProfileModel profile) async {
  print("Storing function called successfully.    stored successfully");

  final data = {
    'name': profile.name,
    'email': profile.email,
    'phoneNumber': profile.phoneNumber,
    'location': profile.location,
    'birthday': profile.birthday
  };
  await storage.write(key: 'profile', value: jsonEncode(data));
}
//for displaying while only one instance is stored

Future<ProfileModel?> displayStoredProfiles() async {
  final jsonString = await storage.read(key: 'profile');
  if (jsonString != null) {
    final data = jsonDecode(jsonString);
    final profile = ProfileModel(
        name: data['name'],
        email: data['email'],
        birthday: data['birthday'],
        location: data['location'],
        phoneNumber: data['phoneNumber']);
    return profile;
  } else {
    //return null case
    return null;
  }
}

Future<bool> checkIfStored() async {
  final jsonString = await storage.read(key: 'profile');
  if (jsonString != null) {
    return true;
  } else {
    return false;
  }
}
