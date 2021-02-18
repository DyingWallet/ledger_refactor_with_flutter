import 'package:flutter/cupertino.dart';

class LoginTextField extends StatefulWidget{

  final String label;
  final TextEditingController controller;
  final bool isPassword;
  final FormFieldValidator<String> validator;
  final FocusNode focusNode;
  final TextInputAction action;
  final ValueChanged<String> onFieldSubmitted;

  LoginTextField({
    this.label,
    this.controller,
    this.isPassword: false,
    this.validator,
    this.focusNode,
    this.action,
    this.onFieldSubmitted,
});

  @override
  _LoginTextFieldState createState() => _LoginTextFieldState();

}

class _LoginTextFieldState extends State<LoginTextField>{
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(children: [

    ],);
  }
}