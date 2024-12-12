import 'package:flutter/material.dart';
import 'package:gymnasium_simulator/Drawer/ranking/user_tile2.dart';
import 'package:provider/provider.dart';
import 'package:gymnasium_simulator/Drawer/models/user_variables.dart';

class viewRanking extends StatefulWidget {
@override
  _ViewRanking createState() => _ViewRanking();
}

class _ViewRanking extends State<viewRanking> {
  
  late UserTile2 descendinOrder;
  @override
  Widget build(BuildContext context) {

    final users = Provider.of<List<User_Variables>>(context);
    
    
    
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (context,index){
          return UserTile2(variables:users[index]);
          
        },
        
      );
    
  } 
               }     
  