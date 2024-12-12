import 'package:flutter/material.dart';
import 'package:gymnasium_simulator/Drawer/database/authService.dart';
import 'dart:async';
import 'package:gymnasium_simulator/Starting_Screens/wrapper.dart';
import 'package:provider/provider.dart';

class Splash extends StatefulWidget{
 @override
 _Splash createState() => _Splash();

}
class _Splash extends State<Splash>{
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
          child: Image.asset("assets/images/splash.jpg",fit: BoxFit.cover,)
        )
    );
}
}
