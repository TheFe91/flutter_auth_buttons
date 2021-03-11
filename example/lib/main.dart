import 'package:social_auth_buttons/res/shared/colors.dart';
import 'package:social_auth_buttons/social_auth_buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String appName = 'Auth Buttons Example';
  bool darkMode = false;
  AuthButtonStyle? authButtonStyle;
  Color githubBtnColor = Colors.white;
  Color facebookBtnColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appName),
        ),
        body: Container(
          width: double.infinity,
          color: darkMode ? Color(0xff303030) : Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => setState(() => darkMode = !darkMode),
                child: Text('Dark / Light mode'),
              ),
              ElevatedButton(
                onPressed: () => setState(() {
                  authButtonStyle =
                      authButtonStyle == null ? AuthButtonStyle.icon : null;
                }),
                child: Text('Icon / Extended mode'),
              ),
              ElevatedButton(
                onPressed: () => setState(() {
                  facebookBtnColor = facebookBtnColor == Colors.white
                      ? buttonFacebookColor
                      : Colors.white;
                  githubBtnColor = githubBtnColor == Colors.white
                      ? buttonGithubColor
                      : Colors.white;
                }),
                child: Text('GitHub and Facebook Button Color'),
              ),
              SizedBox(height: 50),
              GoogleAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
                width: authButtonStyle == null ? 300 : null,
              ),
              SizedBox(height: 10),
              AppleAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
                width: authButtonStyle == null ? 300 : null,
              ),
              SizedBox(height: 10),
              FacebookAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
                buttonColor: facebookBtnColor,
                width: authButtonStyle == null ? 300 : null,
              ),
              SizedBox(height: 10),
              GithubAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
                buttonColor: githubBtnColor,
                width: authButtonStyle == null ? 300 : null,
              ),
              SizedBox(height: 10),
              MicrosoftAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
                width: authButtonStyle == null ? 300 : null,
              ),
              SizedBox(height: 10),
              TwitterAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
                width: authButtonStyle == null ? 300 : null,
              ),
              SizedBox(height: 10),
              EmailPasswordAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                style: authButtonStyle,
                width: authButtonStyle == null ? 300 : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
