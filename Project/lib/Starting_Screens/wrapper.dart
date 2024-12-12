import 'package:flutter/material.dart';
import 'package:gymnasium_simulator/Starting_Screens/Login.dart';
import 'package:gymnasium_simulator/Starting_Screens/Home.dart';
import 'package:provider/provider.dart';
import '../Drawer/database/authService.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({ Key? key }) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User_id?>(context); 
     if(user == null){
       return Login();

     }
    else{
       return Home();

     }
    
  }
}