import 'package:flutter/material.dart';
import 'package:flutter_crash_course_app/login_screen.dart';


//void main() {
//  return runApp(MaterialApp(
//      home:LocationDetails(mockLocation())
//  ));
//}

void main() => runApp(
      MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          primaryColor: Colors.indigo,
        ),
        home: LoginPage(),
      ),
    );

//void main() {
//  return runApp(MaterialApp(
//      home:LocationDetails(mockLocation())
//  ));
//}
