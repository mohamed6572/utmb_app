import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utmb/layout/HomeLayout.dart';
import 'package:utmb/moduols/social_Register/cubit/Cubit.dart';
import 'package:utmb/moduols/social_Register/cubit/States.dart';
import 'package:utmb/shared/components/components.dart';
class utmbRegisterScrean extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => utmbRegisterCubit(),
      child: BlocConsumer<utmbRegisterCubit, utmbRegisterStates>(
        listener: (context, state) {
          if(state is utmbCreateUserSucseslState ){
            navigateTo(context, Home());
          }
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
                          'Register'.toUpperCase(),
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(color: Colors.black),
                        ),
                        // Text(
                        //   'Register now to to communicate with friends',
                        //   style: Theme.of(context)
                        //       .textTheme
                        //       .bodyText1
                        //       ?.copyWith(color: Colors.grey),
                        // ),
                        SizedBox(
                          height: 30,
                        ),
                        defultFormField(
                          type: TextInputType.name,
                          controller: nameController,
                          label: 'name',
                          prefix: Icons.person,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'name must not be empty';
                            }
                          },
                        ),
                        SizedBox(
                          height: 15,
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
                          type: TextInputType.phone,
                          controller: phoneController,
                          label: 'phone',
                          prefix: Icons.phone,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'phone must not be empty';
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
                            suffix: utmbRegisterCubit.get(context).suffix,
                            isPassword:
                                utmbRegisterCubit.get(context).isPassword,
                            passwordShow: () {
                              utmbRegisterCubit.get(context)
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
                          condition: state is! utmbRegisterLodingState,
                          builder: (context) => defultButton(
                            text: 'Register',
                            isUpperCase: true,
                            function: () {
                              print(emailController.text);
                              print(passwordController.text);
                              print(phoneController.text);
                              if (formkey.currentState!.validate()) {
                                // utmbRegisterCubit.get(context).userRegister(
                                //     email: emailController.text,
                                //     password: passwordController.text,
                                //     name: nameController.text,
                                //     phone: phoneController.text
                                // );

                              }
                            },
                          ),
                          fallback: (context) =>
                              Center(child: CircularProgressIndicator()),
                        ),
                        SizedBox(
                          height: 15,
                        ),
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
