import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gymnasium_simulator/Drawer/database/firestore.dart';
import 'package:gymnasium_simulator/Drawer/models/user_data.dart';

import '../Drawer/database/authService.dart';
import '../Utils/routes.dart';



class MyDrawer extends StatelessWidget{

@override
Widget build(BuildContext context) {
  return Drawer(
  child: Container(
    color: Colors.black,
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        
          StreamBuilder<User_id?>(
               stream: AuthService().userID,
               builder: (context, snapshot) {
           
          if(snapshot.hasData){
              User_id? user = snapshot.data;

              return StreamBuilder<UserData>(
              stream: firestore(uid: user!.uID).userData,
              builder: (context, snapshot) {

                 if(snapshot.hasData){
                  UserData? userData = snapshot.data;
                  return DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero, 
                  decoration: BoxDecoration(color: Colors.black, border: Border( 
                  bottom: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                  )
                 )
                ), 
                  accountName: Text(userData?.name ?? "name",style: TextStyle(color: Colors. white)),
                  accountEmail: Text(userData?.country ?? "country",style: TextStyle(color: Colors. white)),
                 )
                );

             }
             else{
                return  CircularProgressIndicator(color: Colors.white,);
             }

            
          }
        );
        
        }
        else{
          return CircularProgressIndicator(color: Colors.white,);
        }
        
     
     
     
     }    
     ),
              
           
       
      
         
          
         const SizedBox(height: 10),

          const SizedBox(height: 1.0, 
          child: const DecoratedBox(
          decoration: const BoxDecoration(
          color: Colors.white
              ),
            ),
         ),
        
      
      ElevatedButton(
          style: TextButton.styleFrom(backgroundColor: Colors.black),
          child: ListTile(
            leading: Icon(
              CupertinoIcons.person_2_alt,
              color: Colors.white,
            ),
            title: const Text('Users', textScaleFactor: 1.2, style: TextStyle(color: Colors. white)),
             ),
              onPressed: (){
              Navigator.pushNamed(context, MyRoutes.profile);
              }
        ),
         
         const SizedBox(height: 1.0, 
          child: const DecoratedBox(
          decoration: const BoxDecoration(
          color: Colors.white
              ),
            ),
         ),
        
      
      ElevatedButton(
          style: TextButton.styleFrom(backgroundColor: Colors.black),
          child: ListTile(
            leading: Icon(
              CupertinoIcons.house_fill,
              color: Colors.white,
            ),
            title: const Text('Home', textScaleFactor: 1.2, style: TextStyle(color: Colors. white)),
             ),
              onPressed: (){
              Navigator.pushNamed(context, MyRoutes.homeRoute);
              }
        ),
        
        const SizedBox(height: 1.0, 
          child: const DecoratedBox(
          decoration: const BoxDecoration(
          color: Colors.white
              ),
            ),
         ),
        
        ElevatedButton(
          style: TextButton.styleFrom(backgroundColor: Colors.black),
          child: ListTile(
            leading: Icon(
              CupertinoIcons.flame_fill,
              color: Colors.white,
            ),
            title: const Text('Calorie', textScaleFactor: 1.2,style: TextStyle(color: Colors. white)),
          ),
          onPressed: (){
              Navigator.pushNamed(context, MyRoutes.calorie);
              }
        ),
      
      const SizedBox(height: 1.0, 
          child: const DecoratedBox(
          decoration: const BoxDecoration(
          color: Colors.white
              ),
            ),
         ),
        
        ElevatedButton(
          style: TextButton.styleFrom(backgroundColor: Colors.black),
          child: ListTile(
            leading: Icon(
              CupertinoIcons.chart_pie_fill,
              color: Colors.white,
            ),
            title: const Text('Nutrition', textScaleFactor: 1.2,style: TextStyle(color: Colors. white)),
             ),
              onPressed: (){
              Navigator.pushNamed(context, MyRoutes.nutrition);
              }
        ),
        
        const SizedBox(height: 1.0, 
          child: const DecoratedBox(
          decoration: const BoxDecoration(
          color: Colors.white
              ),
            ),
         ),
        
        ElevatedButton(
          style: TextButton.styleFrom(backgroundColor: Colors.black),
          child: ListTile(
            leading: Icon(
              CupertinoIcons.chart_bar_fill,
              color: Colors.white,
           ),
            title: const Text('Score', textScaleFactor: 1.2,style: TextStyle(color: Colors. white)),
           ),
           onPressed: (){
              Navigator.pushNamed(context, MyRoutes.ranking);
              }
        ),
       
       const SizedBox(height: 1.0, 
          child: const DecoratedBox(
          decoration: const BoxDecoration(
          color: Colors.white
              ),
            ),
         ),
        
        ElevatedButton(
          style: TextButton.styleFrom(backgroundColor: Colors.black),
          child: ListTile(
            leading: Icon(
              CupertinoIcons.person_3_fill,
              color: Colors.white,
            ),
            title: const Text('Body Types', textScaleFactor: 1.2,style: TextStyle(color: Colors. white)),
           ),
           onPressed: (){
              Navigator.pushNamed(context, MyRoutes.bodyTypesInfo);
              }
        ),
       
       const SizedBox(height: 1.0, 
          child: const DecoratedBox(
          decoration: const BoxDecoration(
          color: Colors.white
              ),
            ),
         ),
        
         ElevatedButton(
          style: TextButton.styleFrom(backgroundColor: Colors.black),
          child: ListTile(
            leading: Icon(
              CupertinoIcons.person_alt_circle_fill,
              color: Colors.white,
           ),
            title: const Text('Log out', textScaleFactor: 1.2,style: TextStyle(color: Colors. white)),
           ),
           onPressed: () async{
              await FirebaseAuth.instance.signOut();
              Navigator.pushNamed(context, MyRoutes.loginRoute);
              
              }
        ),

        const SizedBox(height: 1.0, 
          child: const DecoratedBox(
          decoration: const BoxDecoration(
          color: Colors.white
              ),
            ),
         ),
        
        
    
    
      ],
    
    
      
    ),
  ),

  );
}
}
