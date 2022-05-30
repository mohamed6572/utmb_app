
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utmb/layout/cubit/cubit.dart';
import 'package:utmb/layout/cubit/states.dart';

class Home_layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>utmbCubit() ,
      child: BlocConsumer<utmbCubit, utmbStates>(
        listener: (context, state) {

        },
        builder: (context, state) {
          var cubit = utmbCubit.get(context);

          return Scaffold(
            appBar: AppBar(
              title: Text(cubit.titles[cubit.CurrentIndex]),
            ),
            body: cubit.Screans[cubit.CurrentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.CurrentIndex,
              onTap: (index){
                cubit.ChangeIndex(index);
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
                BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.chat),label: 'Chat'),
                BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
              ],
            ),
          );
        },
      ),
    );
  }
}
/*
BuildCondition(
            condition: utmbCubit.get(context).model != null,
            builder: (context) {
              var model = utmbCubit.get(context).model;
              return Column(
                children: [
                  if (!FirebaseAuth.instance.currentUser!.emailVerified)
                    Container(
                      color: Colors.amber.withOpacity(.7),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            Icon(Icons.info_outline),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Text('please verify your email'),
                            ),
                            defultTextButtton(
                                text: 'Send',
                                function: () {
                                  FirebaseAuth.instance.currentUser
                                      ?.sendEmailVerification()
                                      .then((value) {
                                        showToast(text: 'show your mail', state: ToastStates.SUCSSES);
                                  })
                                      .catchError((error) {});
                                }),
                          ],
                        ),
                      ),
                    )
                ],
              );
            },
            fallback: (context) => Center(
              child: CircularProgressIndicator(),
            ),
          ),
 */