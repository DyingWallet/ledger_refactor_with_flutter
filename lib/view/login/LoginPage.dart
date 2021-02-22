
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
    final _screenSize = MediaQuery
        .of(context)
        .size;
    final _screenHeight = _screenSize.height;
    final _screenWidth = _screenSize.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: _screenHeight,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/imgGirlBack.png"),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Column(children: [
            ///LOGO图片
            Expanded(child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
              child: Container(
                decoration: BoxDecoration(image: DecorationImage(
                  image: AssetImage("assets/images/imgBG.png"),
                  fit: BoxFit.contain,
                )),
              ),
            ),
              flex: 6,),

            ///表单
            Expanded(child: Container(
              child: Column(children: [

                ///Title
                RichText(text: TextSpan(
                  text: "${GSVar.loginTitle}",
                  style: TextStyle(color: ThemeColors.picaPink, fontSize: 32,fontWeight: FontWeight.bold),
                )),

                ///账号
                LoginTextField(label: "${GSVar.username}",
                  controller: _userNameController,),

                ///密码
                LoginTextField(label: "${GSVar.password}",
                  controller: _passWordController,
                  isPassword: true,),

                ///登录按钮
                LoginButton(),

                ///额外选项
                Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(children: [
                    ///注册入口
                    TextButton(onPressed: () {
                      // Navigator.of(context).;
                    },
                        child: Text("${GSVar.goRegister}",
                          style: TextStyle(color: ThemeColors.picaPink),)),
                    ///忘记密码入口（测试版本中功能为使用默认账号登录）
                    TextButton(onPressed: () {
                      Navigator.of(context).pop();
                    },
                        child: Text("${GSVar.forgetPassword}",
                          style: TextStyle(color: ThemeColors.picaPink),)),
                  ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),
              ],
                mainAxisAlignment: MainAxisAlignment.start,
              ),
              decoration: BoxDecoration(color: Colors.white),
            ),
              flex: 4,
            ),
          ],),
        ),
      ),
    );
  }
}