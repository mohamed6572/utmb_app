


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utmb/layout/HomeLayout.dart';
import 'package:utmb/moduols/social_login/utmb_login_screan.dart';
import 'package:utmb/shared/Bloc_Observer.dart';
import 'package:utmb/shared/styles/themes.dart';

void main() {
  BlocOverrides.runZoned(
        () async {
      WidgetsFlutterBinding.ensureInitialized();
     //await Firebase.initializeApp();


      runApp(MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: lightTheme,
       darkTheme:darkTheme,
       themeMode: ThemeMode.light,
     //  cubit.isDark ? ThemeMode.dark : ThemeMode.light,

       home: utmbLoginScrean(),
     );

  }
}
