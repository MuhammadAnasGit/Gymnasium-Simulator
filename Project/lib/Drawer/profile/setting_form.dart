import 'package:flutter/material.dart';
import '../database/authService.dart';
import '../database/firestore.dart';


class SettingForm extends StatefulWidget {

  @override
  _SettingFormState createState() => _SettingFormState();
}


  class _SettingFormState extends State<SettingForm> {
  
  final _formKey = GlobalKey<FormState>();

  late String _currentName;
  late String _currentCountry;
  late int _currentNoOfWeeksExercising;
 
  
  
  @override
  Widget build(BuildContext context) {
    
  
    
            return StreamBuilder<User_id?>(
              stream: AuthService().userID,
              builder: (context, snapshot) {
                if(snapshot.hasData)
                {
                   User_id? user = snapshot.data;
                   return Form(
                    
                      key:  _formKey,
                      child: Column(
                        children: <Widget>[
                
                          Text("Update Your Info", style: TextStyle(fontSize: 18.0),),
                          
                          SizedBox(height: 10),
                
                          TextFormField(
                            decoration: InputDecoration(
                                  hintText: "Enter Your Name",
                                  labelText: "Username",
                                  
                          ),
                          validator: (value) => value!.isEmpty ? 'Enter Your Name' : null,
                          onChanged: (value) => setState(() => _currentName=value ),
                          ),
                
                          SizedBox(height: 10),
                
                          TextFormField(
                            decoration: InputDecoration(
                                  hintText: "Enter Your Country",
                                  labelText: "Country",
                                  
                          ),
                          validator: (value) => value!.isEmpty ? 'Enter Your Country Name' : null,
                          onChanged: (value) => setState(() => _currentCountry=value ),
                          ),
                
                          SizedBox(height: 10),
                
                          TextFormField(
                             keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                              hintText: "Exercising For",
                              labelText: "Weeks",
                                  
                          ),
                          validator: (value) => value!.isEmpty ? 'Enter No of weeks' : null,
                          onChanged: (value) => setState(() => _currentNoOfWeeksExercising=int.parse(value)),
                          ),
                
                          SizedBox(height: 10),
                
                          ElevatedButton(
                          child: Text("Update"),
                          style: TextButton.styleFrom(backgroundColor: Colors.black),
                          onPressed: () async{
                            if(_formKey.currentState!.validate())
                            {
                                await firestore(uid: user!.uID).
                                updateUserData(
                                _currentName ,
                                _currentCountry,
                                _currentNoOfWeeksExercising);
                                Navigator.pop(context);
                            }
                            
                          },
                          
                        ),
                
                
                
                        ],
                
                      ),
                      
                    );

                    

                }
                else{
                      return CircularProgressIndicator();
                    }
               
              }
            );

        
        
        
        
        
      }
    
  }
