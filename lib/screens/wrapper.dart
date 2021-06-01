import 'package:flutter/material.dart';
import 'package:smart_planner/screens/authenticate/authenticate.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // home or authennticate  widget
    return Authenticate();
  }
}