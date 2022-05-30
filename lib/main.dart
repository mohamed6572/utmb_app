


import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utmb/layout/HomeLayout_for_Admin.dart';
import 'package:utmb/layout/HomeLayout_for_stud.dart';
import 'package:utmb/layout/HomeLayout_for_tech.dart';
import 'package:utmb/layout/cubit/cubit.dart';
import 'package:utmb/layout/cubit/states.dart';
import 'package:utmb/moduols/social_login/cubit/Cubit.dart';
import 'package:utmb/moduols/social_login/utmb_login_screan.dart';
import 'package:utmb/shared/Bloc_Observer.dart';
import 'package:utmb/shared/styles/themes.dart';

import 'package:utmb/shared/components/constens.dart';
import 'package:utmb/shared/network/local/casheHelper.dart';

void main()  {
  BlocOverrides.runZoned(
        () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();

      await casheHelper.Init();

      uId = casheHelper.getData(key: "uId");
      Widget? widget;
      print(uId);

      if (uId != null) {
        /////admin
        if(uId == 'jo4vhirAqcb7rVf5hDD5jSg7f0p1')
        widget = HomeLayout_for_Admin();
        //////student
        if(uId == 'fEitn28YAFRCF92BepkIK8kS7q52')
        widget = HomeLayout_for_stud();
        ////tech
        if(uId == 'RETuguuJSwYFsSX9MBaMif4lRPi2')
        widget = HomeLayout_for_tech();

      } else {
        widget = utmbLoginScrean();
      }
      runApp(MyApp(widget));
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  Widget? StartWidget;

  MyApp(this.StartWidget);
  @override
  Widget build(BuildContext context) {
     return
     MultiBlocProvider(
       providers: [
         BlocProvider(
             create: (context) => utmbCubit()
               ..getUserData())
       ],
       child: BlocConsumer<utmbCubit, utmbStates>(
         listener: (context, state) {},
         builder: (context, state) {
           return MaterialApp(
               debugShowCheckedModeBanner: false,
               theme: lightTheme,
               darkTheme: darkTheme,

               home: StartWidget
           )
           ;
         },
       ),
     );

  }
}
