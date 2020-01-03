import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_crash_course_app/AppCard.dart';

class LoginPage extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: HexColor("#CC282C87"),
      statusBarBrightness: Brightness.light,
    ));
    return Scaffold(
      body: LoginPageWrapper(_scaffoldKey),
    );
  }

}

class LoginPageWrapper extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey;

  LoginPageWrapper(this._scaffoldKey);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.asset(
                    "assets/images/abstruct_bg.jpg",
                    fit: BoxFit.cover,
                  ),
                  LoginForm(scaffoldKey: _scaffoldKey)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class LoginForm extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  LoginForm({Key key, @required this.scaffoldKey}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginFormState();
  }
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AppCard(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration:
                        InputDecoration(hintText: 'Email', labelText: "Email"),
                    validator: (value) {
                      return (value.isEmpty)
                          ? "Email can't be left blank."
                          : null;
                    },
                    style: TextStyle(fontSize: 16),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Password', labelText: "Password"),
                    validator: (value) {
                      return (value.isEmpty)
                          ? "Password can't be left blank."
                          : null;
                    },
                    style: TextStyle(fontSize: 16),
                  ),
                  Container(
                    alignment: Alignment(1.0, 0.0),
                    padding: EdgeInsets.fromLTRB(0, 16, 0, 8),
                    child: Text(
                      "Forgot Password?",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: HexColor("#282C87"),
                          decoration: TextDecoration.underline,
                          fontSize: 14),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 16, 0, 8),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(4.0),
                        ),
                        color: HexColor("#282C87"),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            widget.scaffoldKey.currentState.showSnackBar(
                                SnackBar(content: Text('Processing Data')));
                          }
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 16, 0, 4),
                    child: Text(
                      "Not yet registered",
                      style:
                          TextStyle(color: HexColor("#282C87"), fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                    child: Text(
                      "Signup Now",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: HexColor("#282C87"),
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
