import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ledger_refactor_with_flutter/config/GlobalStaticVariable.dart';
import 'package:ledger_refactor_with_flutter/config/ThemeColors.dart';

class SignUpPage extends StatefulWidget{
  @override
  SignUpPageState createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  final _usernameController = TextEditingController();
  final _nickNameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _nickNameController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 80),
        child: Container(
          child: ListView(
            children: [

              ///Title
              RichText(text: TextSpan(
                text: "${GSVar.loginTitle}",
                style: TextStyle(color: ThemeColors.picaPink,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              )),

              ///账号
              SignUpPage(),

              ///昵称
              SignUpPage(),

              ///密码
              SignUpPage(),

              ///确认密码
              SignUpPage(),

              ///按钮组
              Row(children: [

              ],),
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.white, shape: BoxShape.rectangle),
        ),
      ),
    );
  }
}