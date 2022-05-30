import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utmb/moduols/social_Register/utmb_Register_Screan.dart';
import 'package:utmb/moduols/social_login/cubit/Cubit.dart';
import 'package:utmb/moduols/social_login/cubit/States.dart';
import 'package:utmb/shared/components/components.dart';



class utmbLoginScrean extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => utmbLoginCubit(),
      child: BlocConsumer<utmbLoginCubit, utmbLoginStates>(
        listener: (context, state) {

        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Login'.toUpperCase(),
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(color: Colors.black),
                        ),
                        // Text(
                        //   'login now to communicate with friends',
                        //   style: Theme.of(context)
                        //       .textTheme
                        //       .bodyText1
                        //       ?.copyWith(color: Colors.grey),
                        // ),
                        SizedBox(
                          height: 30,
                        ),
                        defultFormField(
                          type: TextInputType.emailAddress,
                          controller: emailController,
                          label: 'Email',
                          prefix: Icons.email_outlined,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Email must not be empty';
                            }
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        defultFormField(
                            type: TextInputType.visiblePassword,
                            controller: passwordController,
                            label: 'Password',
                            suffix: utmbLoginCubit.get(context).suffix,
                            isPassword:
                                utmbLoginCubit.get(context).isPassword,
                            onSubmeted: (value) {
                              if (formkey.currentState!.validate()) {
                                // utmbLoginCubit.get(context).userLogin(
                                //     email: emailController.text,
                                //     password: passwordController.text
                                // );
                              }
                            },
                            passwordShow: () {
                              utmbLoginCubit.get(context)
                                  .ChangePasswordVisibilty();
                            },
                            prefix: Icons.lock_outline,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Password must not be empty';
                              }
                            }),
                        SizedBox(
                          height: 30,
                        ),
                        BuildCondition(
                          condition: state is! utmbLoginLodingState,
                          builder: (context) => defultButton(
                            text: 'login',
                            isUpperCase: true,
                            function: () {
                              print(emailController.text);
                              print(passwordController.text);
                              if (formkey.currentState!.validate()) {
                                // utmbLoginCubit.get(context).userLogin(
                                //     email: emailController.text,
                                //     password: passwordController.text);
                              }
                            },
                          ),
                          fallback: (context) =>
                              Center(child: CircularProgressIndicator()),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Dont\'t have an account?'),
                            defultTextButtton(
                                text: 'register now',
                                function: () {
                                  navigateTo(context, utmbRegisterScrean());
                                }),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
