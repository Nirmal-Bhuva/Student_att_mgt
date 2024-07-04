import 'package:attendence/authentication/login.dart';
import 'package:attendence/authentication/signup.dart';
import 'package:flutter/src/widgets/framework.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = false;
  @override
  Widget build(BuildContext context) => isLogin
      ? signup(onClickedSignIn: toggle)
      : login(onClickedSignUp: toggle);

  void toggle() => setState(() => isLogin = !isLogin);
}
