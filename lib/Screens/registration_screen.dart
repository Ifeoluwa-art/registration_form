import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget{
  @override
  _RegistrationSreenState createState()
  => _RegistrationSreenState();
}

class _RegistrationSreenState extends State<RegistrationScreen>{
final TextEditingController
firstNameController=TextEditingController ();
final TextEditingController
LastNamecontroller=TextEditingController ();
final TextEditingController
emailName=TextEditingController ();
bool isRegistered = false;
}
@override 
Widget build(BuildContext) {
return Scaffold(
  appBar: AppBar(
    title: const Text( "Registration form")
  ),
);
}