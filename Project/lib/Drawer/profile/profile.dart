import 'package:flutter/material.dart';
import 'package:gymnasium_simulator/Drawer/profile/setting_form.dart';
import 'package:provider/provider.dart';
import 'package:gymnasium_simulator/Drawer/profile/view.dart';
import '../database/firestore.dart';
import '../models/user_variables.dart';

class Profile extends StatefulWidget {
 
  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    
  void _showSettingPanel(){
    showModalBottomSheet(context: context, builder: (context){

      return Container(
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 60),
      child: SettingForm(),
      

      );
      
      
      
      
    });
  }
   return StreamProvider<List<User_Variables>>.value(
       value: firestore(uid: '').users, 
       initialData: [],
       child:  Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
              title: Text("Profile View"),
              backgroundColor: Colors.black,

              actions: [
                ElevatedButton.icon(
                icon: Icon(Icons.settings),
                style: TextButton.styleFrom(backgroundColor: Colors.black),
                label: Text(""),
                onPressed: () => _showSettingPanel(),
              )
             ],
            ),
            
            body: View(),
          
          
            ),
       
     
   );
  

    
  }
}