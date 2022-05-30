import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utmb/layout/cubit/cubit.dart';
import 'package:utmb/layout/cubit/states.dart';
import 'package:utmb/moduols/social_Register/cubit/Cubit.dart';
import 'package:utmb/shared/components/components.dart';
import 'package:utmb/shared/components/constens.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<utmbCubit, utmbStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var userModel = utmbCubit.get(context).userModel;

        return Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  height: 210,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: double.infinity,
                          height: 160,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(4.0),
                                topLeft: Radius.circular(4.0),
                              ),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://img.freepik.com/free-vector/future-metropolis-virtual-model-cartoon_1441-3250.jpg?t=st=1653918999~exp=1653919599~hmac=6b1078bffd672f74af681a1ec6c61ad0ab333ca3af38f0cc25043dac10017651&w=1380'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      CircleAvatar(
                        radius: 64,
                        backgroundColor:
                            Theme.of(context).scaffoldBackgroundColor,
                        child: CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.red,
                            backgroundImage: NetworkImage(
                                'https://img.freepik.com/free-vector/future-metropolis-virtual-model-cartoon_1441-3250.jpg?t=st=1653918999~exp=1653919599~hmac=6b1078bffd672f74af681a1ec6c61ad0ab333ca3af38f0cc25043dac10017651&w=1380')),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '${userModel?.name}',
                  style: Theme.of(context).textTheme.bodyText1,
                ),

              ],
            ),
          ),
        );
      },
    );
  }
}
