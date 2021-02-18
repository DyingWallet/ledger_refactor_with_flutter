
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ledger_refactor_with_flutter/config/GlobalStaticVariable.dart';
import 'package:ledger_refactor_with_flutter/config/ThemeColors.dart';
import 'package:ledger_refactor_with_flutter/view/login/LoginTextField.dart';

import 'LoginButton.dart';

class LoginPage extends StatefulWidget{
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final _userNameController = TextEditingController();
  final _passWordController = TextEditingController();

  @override
  void dispose() {
    _userNameController.dispose();
    _passWordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/imgGirlBack.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: [

          ///Image
          Expanded(
            child: Container(
              decoration: BoxDecoration(image: DecorationImage(
                image: AssetImage("assets/image/imgBG.png"),
                fit: BoxFit.cover,
              )),
            ),
            flex: 6,),

          ///Form
          Expanded(
            child: Container(
              child: Column(children: [
                ///Title
                RichText(text: TextSpan(
                  text: "${GSVar.loginTitle}",
                  style: TextStyle(color: ThemeColors.picaPink,fontSize: 24),
                )),
                ///账号
                LoginTextField(),
                ///密码
                LoginTextField(),
                ///登录按钮
                LoginButton(),
              ],),
            ),
            flex: 3,
          ),
          ///额外选项
          Expanded(
            child: Row(children: [

            ],),
            flex: 1,
          ),

        ],),
      ),
    );
  }

}