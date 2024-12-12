import 'package:flutter/material.dart';
import 'package:gymnasium_simulator/Drawer/ranking/user_tile2.dart';
import 'package:gymnasium_simulator/Drawer/ranking/viewRanking.dart';
import 'package:provider/provider.dart';
import '../database/firestore.dart';
import '../models/user_variables.dart';

class Ranking extends StatefulWidget {
 

  
  @override
  _Ranking createState() => _Ranking();
}

class _Ranking extends State<Ranking> {
  
  


  @override
  
  Widget build(BuildContext context) {
    
    
    
   return StreamProvider<List<User_Variables>>.value(
       value: firestore(uid: '').users, 
       initialData: [],
       child:   Scaffold(
                backgroundColor: Colors.white,
                appBar: AppBar(
                title: Text("Scorecard"),
                backgroundColor: Colors.black,
       
              ),
              
              body: viewRanking(),
            
            
              ),
       
       
     
   );
  

    
  }
}