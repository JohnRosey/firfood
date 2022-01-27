import 'package:firebase_auth/firebase_auth.dart';

class StateModel {
  bool isLoading;
  User user;

  StateModel({
    this.isLoading = false,
    required this.user,
  });
}
