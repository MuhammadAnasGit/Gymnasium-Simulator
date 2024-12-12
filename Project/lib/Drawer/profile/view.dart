import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:gymnasium_simulator/Drawer/models/user_variables.dart';
import 'package:gymnasium_simulator/Drawer/profile/user_tile.dart';

class View extends StatefulWidget {
 
  @override
  _View createState() => _View();
}

class _View extends State<View> {
  @override
  Widget build(BuildContext context) {

    final users = Provider.of<List<User_Variables>>(context);
    
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (context,index){
          return UserTile(user_variables:users[index]);
        },
        
      );
    
  }
}