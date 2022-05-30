import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utmb/moduols/social_login/cubit/States.dart';

class utmbLoginCubit extends Cubit<utmbLoginStates> {
  utmbLoginCubit() : super(utmbLoginIntialState());

  static utmbLoginCubit get(context) => BlocProvider.of(context);

  void userLogin({
    required String email,
    required String password,
  }) {
    emit(utmbLoginLodingState());

    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
          print(value.user?.email);
          print(value.user?.uid);
      emit(utmbLoginSucsesState(value.user?.uid));

    })
        .catchError((error) {
      emit(utmbLoginerrorState(error.toString()));
    });
  }

  IconData suffix = Icons.visibility;
  bool isPassword = true;

  void ChangePasswordVisibilty() {
    isPassword = !isPassword;
    suffix = isPassword ? Icons.visibility : Icons.visibility_off;
    emit(utmbChangePasswordVisibiltyState());
  }
}
