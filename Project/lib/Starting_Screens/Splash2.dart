import 'package:flutter/material.dart';
import 'package:gymnasium_simulator/Starting_Screens/Home.dart';
import 'package:gymnasium_simulator/Starting_Screens/wrapper.dart';
import 'dart:async';

import 'package:provider/provider.dart';

import '../Drawer/database/authService.dart';

class Splash2 extends StatefulWidget{
 @override
 _Splash2 createState() => _Splash2();

}
class _Splash2 extends State<Splash2>{
  @override
  void initState() {
    
    super.initState();
    Timer(
      Duration(seconds: 2),
      ()=>Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder:(context) => 
        StreamProvider<User_id?>.value(
        value: AuthService().userID,
        initialData: null,
        child: Wrapper(),
        
            
            )
       )
    
    
      )  
    );

}

@override
 Widget build(BuildContext context) {
    return Material(
     color: Colors.white,
      child:Container(
        height: 500,
        width: 400,
          child: Image.asset("assets/images/splash2.jpg",fit: BoxFit.cover,)
        )
    );
}
}
