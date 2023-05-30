import 'package:flutter/material.dart';

class ProfileModel {
  final String name;
  final String email;
  final int phoneNumber;
  final String location;
  final String birthday;

  ProfileModel(
      {required this.name,
      required this.email,
      required this.phoneNumber,
      required this.location,
      required this.birthday});
}
