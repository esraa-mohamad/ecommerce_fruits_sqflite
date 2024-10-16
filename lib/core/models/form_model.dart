import 'dart:io';

class FormModel {
  final String firstName;
  final String lastName;
  final String phone;
  final String nationalId;
  final String email;
  final String country;
  final String gender;
  final String birthDate;
  final File image;

  FormModel({
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.nationalId,
    required this.email,
    required this.country,
    required this.gender,
    required this.birthDate,
    required this.image,
  });
}
