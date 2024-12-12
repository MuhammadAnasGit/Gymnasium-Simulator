import 'package:flutter/material.dart';
import 'package:gymnasium_simulator/Drawer/models/user_variables.dart';

class UserTile extends StatelessWidget {
  
  final User_Variables user_variables;
  UserTile({required this.user_variables});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0),
        child: SingleChildScrollView(
          child: ListTile(
            title: Text(user_variables.country,style: TextStyle(color: Colors. black) ),
            subtitle: Text("${user_variables.name} Working out for ${user_variables.noOfWeeksExercising} weeks", style: TextStyle(color: Colors. black)),
            
            
          
        
          ),
        ),
      ),
      
    );
  }
}