import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utmb/layout/cubit/states.dart';
import 'package:utmb/moduols/chat/chat.dart';
import 'package:utmb/moduols/home/home.dart';
import 'package:utmb/moduols/profile/profile_Screan.dart';
import 'package:utmb/moduols/settings/settings.dart';

class utmbCubit extends Cubit<utmbStates> {
  utmbCubit() : super(utmbInitialState());

  static utmbCubit get(context) => BlocProvider.of(context);


  List<Widget> Screans = [
  profile(),
    home(),
    chat(),
    settings()
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
