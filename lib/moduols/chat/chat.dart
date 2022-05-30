import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utmb/moduols/social_Register/cubit/Cubit.dart';
import 'package:utmb/moduols/social_Register/cubit/States.dart';
import 'package:utmb/shared/components/components.dart';

class chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => utmbRegisterCubit(),

      child: BlocConsumer<utmbRegisterCubit, utmbRegisterStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
            body: Column(
              children: [
                Center(
                  child:
                  defultTextButtton(
                      text: 'logout',
                      function: () {
                        utmbRegisterCubit.get(context).createUser(email: 'tech@gmail.com',
                            name: 'tech', phone: '129919111', uId: 'RETuguuJSwYFsSX9MBaMif4lRPi2',
                            specailite: 'software',
                            prenom: 'mohamed',
                            dnaisance: 'egypt'

                        );
                      })
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}