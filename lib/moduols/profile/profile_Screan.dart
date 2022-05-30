import 'package:flutter/material.dart';

class profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(8),
        child:  Column(
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
                                '',),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  CircleAvatar(
                    radius: 64,
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.red,
                      backgroundImage: NetworkImage(
                          ''                        ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),

            Text(  'name',style: Theme.of(context).textTheme.bodyText1,),

          ],
        ),
      ),
    );
  }
}
