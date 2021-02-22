import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ledger_refactor_with_flutter/config/GlobalStaticVariable.dart';
import 'package:ledger_refactor_with_flutter/config/ThemeColors.dart';

class LoginTextField extends StatefulWidget {

  final String label;
  final TextEditingController controller;
  final bool isPassword;
  final FormFieldValidator<String> validator;
  final FocusNode focusNode;
  final TextInputAction action;
  final ValueChanged<String> onFieldSubmitted;

  LoginTextField(
      {
        @required this.label,
        @required this.controller,
        this.isPassword: false,
        this.validator,
        this.focusNode,
        this.action,
        this.onFieldSubmitted,
      });

  @override
  _LoginTextFieldState createState() => _LoginTextFieldState();

}

class _LoginTextFieldState extends State<LoginTextField> {
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: 40, right: 40),
      child: Column(children: [
        Text("${widget.label}", style: TextStyle(
            color: ThemeColors.picaPink, fontWeight: FontWeight.bold),),
        TextFormField(
          controller: controller,
          obscureText: widget.isPassword,
          keyboardType: widget.isPassword ?
              TextInputType.visiblePassword :
              TextInputType.emailAddress,
          validator: widget.isPassword ?
          ///密码校验
              (text) {
            RegExp emailReg = new RegExp(
                r"^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+((\.[a-zA-Z0-9_-])+)+$");
            if (!emailReg.hasMatch(text))
              return "${GSVar.usernameFormatError}";
            return null;
          } :
          ///用户名/邮箱校验
              (text) {
            RegExp passwordReg = new RegExp(r"^[a-zA-Z0-9]{6,}$");
            if (!passwordReg.hasMatch(text))
              return "${GSVar.passwordFormatError}";
            return null;
          },
          focusNode: widget.focusNode,
          textInputAction: widget.action,
          onFieldSubmitted: widget.onFieldSubmitted,
          cursorColor: ThemeColors.picaPink,
        ),
      ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}