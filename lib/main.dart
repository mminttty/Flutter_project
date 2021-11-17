import 'package:flutter/material.dart';


import 'Homepage.dart';
import 'Notification.dart';
import 'Registration.dart';
import 'SignInPage.dart';
import 'launcher.dart';
import 'Calendar.dart';
import 'Howareyou.dart';
import 'Profile.dart';

class MyApp extends StatelessWidget{
   const MyApp({Key? key}) : super(key: key);
    
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
                theme: ThemeData(
                    colorScheme: ColorScheme.fromSwatch(
                          primarySwatch: Colors.blue,
                        ).copyWith(
                          secondary: Colors.purple,
                    ),
                    textTheme: TextTheme(bodyText2: TextStyle(color: Colors.red)),
                ),
                title: 'Track your Covid',
                initialRoute: '/', // สามารถใช้ home แทนได้
                routes: {
                    Launcher.routeName: (context) => Launcher(),
                },
        );
    }
}