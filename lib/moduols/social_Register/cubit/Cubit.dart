import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utmb/models/utmb_user_model.dart';
import 'package:utmb/moduols/social_Register/cubit/States.dart';
class utmbRegisterCubit extends Cubit<utmbRegisterStates> {
  utmbRegisterCubit() : super(utmbRegisterIntialState());

  static utmbRegisterCubit get(context) => BlocProvider.of(context);

   // void userRegister({
   //   required String email,
   //   required String name,
   //   required String phone,
   //   required String password,
   //   required String prenom,
   //   required String dnaisance,
   //   required String specailite,
   // }) {
   //   emit(utmbRegisterLodingState());
   //
   //   FirebaseAuth.instance
   //       .createUserWithEmailAndPassword(email: email, password: password)
   //       .then((value) {
   //
   //     createUser(
   //       uId: value.user!.uid,
   //       name: name,
   //       email: email,
   //       phone: phone,
   //       dnaisance: dnaisance,
   //       prenom: prenom,
   //       specailite: specailite
   //
   //     );
   //
   //   }).catchError((error) {
   //     emit(utmbRegisterErerorState(error.toString()));
   //   });
   // }

   void createUser({
     required String email,
     required String name,
     required String phone,
     required String uId,
     required String dnaisance,
     required String prenom,
     required String specailite,

   }) {
     utmbUserModel model =
         utmbUserModel(
           name: name, email: email, phone: phone, uId: uId,
           dnaisance: dnaisance,
           prenom: prenom,
           specailite:specailite ,
           cover:
'https://img.freepik.com/free-vector/future-metropolis-virtual-model-cartoon_1441-3250.jpg?t=st=1653918999~exp=1653919599~hmac=6b1078bffd672f74af681a1ec6c61ad0ab333ca3af38f0cc25043dac10017651&w=1380'           ,
           image:
           'https://img.freepik.com/free-vector/future-metropolis-virtual-model-cartoon_1441-3250.jpg?t=st=1653918999~exp=1653919599~hmac=6b1078bffd672f74af681a1ec6c61ad0ab333ca3af38f0cc25043dac10017651&w=1380'           ,


         );

     FirebaseFirestore.instance
         .collection('users')
         .doc(uId)
         .set(model.toJson())
         .then((value) {
           emit(utmbCreateUserSucseslState());
     })
         .catchError((error) {
           emit(utmbCreateUserErerorState(error.toString()));
     });
   }

  IconData suffix = Icons.visibility;
  bool isPassword = true;

  void ChangePasswordVisibilty() {
    isPassword = !isPassword;
    suffix = isPassword ? Icons.visibility : Icons.visibility_off;
    emit(utmbRegisterChangePasswordVisibiltyState());
  }
}
