import 'package:flutter/material.dart';
import 'package:gymnasium_simulator/Drawer/models/user_variables.dart';

class UserTile2 extends StatelessWidget {
  
  final User_Variables variables;

  UserTile2({required this.variables});
    
  
  String get a => variables.noOfWeeksExercising.toString();
  int get b => int.parse(a);
  int get points => (((b*100)+50));

  @override
  Widget build(BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0),
        child: ListTile(
            title: Text(variables.name,style: TextStyle(color: Colors. black) ),
            subtitle: Text("Points: ${points}", style: TextStyle(color: Colors. black)),
            
            
          
        
          ),
        
      ),
      
    );
  }
}

