import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ledger_refactor_with_flutter/config/GlobalStaticVariable.dart';

class LoginButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: ElevatedButton(
          child: Text("${GSVar.login}", style: TextStyle(color: Colors.white),),
          onPressed: () {},)
    );
  }
}