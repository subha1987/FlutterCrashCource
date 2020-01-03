import 'package:flutter/material.dart';
import 'package:flutter_crash_course_app/login_screen.dart';

class AppCard extends StatelessWidget {
  final Widget child;

  AppCard({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Card(
          color: Colors.white,
          child: Container(
            padding: EdgeInsets.all(16),
            child: child,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: HexColor("#282C87"), width: 2),
              boxShadow: [
                BoxShadow(color: HexColor("#282C87"), offset: Offset(10.0, 10.0)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
