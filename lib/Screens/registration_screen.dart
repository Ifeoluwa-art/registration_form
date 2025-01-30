
import 'package:flutter/material.dart';
import 'package:registration_form/Screens/details_screen.dart';

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
emailController=TextEditingController ();
bool isRegistered = false;

@override 
Widget build(BuildContext ) {
return Scaffold(
  appBar: AppBar(
    title: const Text( "Registration form")
  ),
  body: Padding(padding:const EdgeInsets.all(20),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextField(
      controller: 
        firstNameController,
        decoration: const
        InputDecoration(
          labelText: "First Name"
        ),
      ),
       TextField(
          controller: 
        LastNamecontroller,
        decoration: const
        InputDecoration(
          labelText: "Last Name"
        ),
      ),
       TextField(
       controller: 
       emailController,
       decoration: const
       InputDecoration(
        labelText: "Email Name"
       ),
      ),
     const SizedBox(
      height: 30),
     GestureDetector(
      onTap: (){
        setState(() {
          isRegistered =!isRegistered;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color:isRegistered? Colors.green : Colors.blue,
           borderRadius: BorderRadius.circular(10),
        ),
        child: Text(isRegistered ?
        "Registration Successful" :
        "Register me",
        style: const TextStyle(
          color: Colors.white,
        ),),
      ),
     ),
     const SizedBox(height: 45,),
     if(isRegistered)
     ElevatedButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsScreen(
        firstname: firstNameController.text,
        lastname: LastNamecontroller.text,
        email: emailController.text,
      )));
     }, child: Text("View registration details"))

    ],
  ),
  )
  
  );

}
}