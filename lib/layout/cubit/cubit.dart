import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utmb/layout/cubit/states.dart';
import 'package:utmb/models/utmb_user_model.dart';
import 'package:utmb/moduols/chat/chat.dart';
import 'package:utmb/moduols/home/home.dart';
import 'package:utmb/moduols/profile/profile_Screan.dart';
import 'package:utmb/moduols/settings/settings.dart';
import 'package:utmb/shared/components/constens.dart';

class utmbCubit extends Cubit<utmbStates> {
  utmbCubit() : super(utmbInitialState());

  static utmbCubit get(context) => BlocProvider.of(context);

  utmbUserModel? userModel;

  void getUserData() {
  if(uId == 'RETuguuJSwYFsSX9MBaMif4lRPi2') {
      FirebaseFirestore.instance
          .collection('users')
          .doc('RETuguuJSwYFsSX9MBaMif4lRPi2')
          .get()
          .then((value) {
        print(value.data());
        userModel = utmbUserModel.fromJson(value.data()!);
        emit(utmbgetUserSucsesState());
      }).catchError((error) {
        emit(utmbgetUserErrorState(error.toString()));
      });
    }
  if(uId == 'fEitn28YAFRCF92BepkIK8kS7q52') {
      FirebaseFirestore.instance
          .collection('users')
          .doc('fEitn28YAFRCF92BepkIK8kS7q52')
          .get()
          .then((value) {
        print(value.data());
        userModel = utmbUserModel.fromJson(value.data()!);
        emit(utmbgetUserSucsesState());
      }).catchError((error) {
        emit(utmbgetUserErrorState(error.toString()));
      });
    }
  if(uId == 'jo4vhirAqcb7rVf5hDD5jSg7f0p1') {
      FirebaseFirestore.instance
          .collection('users')
          .doc('jo4vhirAqcb7rVf5hDD5jSg7f0p1')
          .get()
          .then((value) {
        print(value.data());
        userModel = utmbUserModel.fromJson(value.data()!);
        emit(utmbgetUserSucsesState());
      }).catchError((error) {
        emit(utmbgetUserErrorState(error.toString()));
      });
    }
  }

  List<Widget> Screans = [
    if(uId =='RETuguuJSwYFsSX9MBaMif4lRPi2')
      profile(),home(),chat(),settings(),
    if(uId =='fEitn28YAFRCF92BepkIK8kS7q52')
      profile(),home(),chat(),settings(),
    if(uId =='jo4vhirAqcb7rVf5hDD5jSg7f0p1')
      profile(),home(),chat(),settings(),
  ];

  List<String> titles = [
    'Profile',
    'Home',
    'Chat',
    'Settings',
  ];

  int CurrentIndex = 0;

  void ChangeIndex(index) {


      CurrentIndex = index;
      emit(utmbChangeBottomNavState());

  }


}
