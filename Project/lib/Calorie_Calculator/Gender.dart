import 'package:flutter/material.dart';
import 'package:gymnasium_simulator/utils/routes.dart';

class Gender extends StatefulWidget{

  
@override
_Gender createState() => _Gender();
}

class _Gender extends State<Gender> {

int _value =0;

 @override
  Widget build(BuildContext context) {
    
    return Material(
      color: Colors.white,
        
        child: Scaffold(
         
        resizeToAvoidBottomInset : false,
          appBar: AppBar(
          title: Text("Gender"),
          backgroundColor: Colors.black,
         ), 

          body: Padding(
               padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 24),
               child: Center(
                 child: Column(
                  children: [
                    Row(
                      children:[ 
                        Radio( value: 1,
                        groupValue: _value,
                        onChanged:(value){
                          setState((){
                          _value = value as int ;
                          }
                        );
                      }
                      
                        ),
                        SizedBox(width: 5),
                        Text("Male"),
                        
                      ]
                    ),
                    SizedBox(height: 10,),
          
                     Row(
                      children:[ 
                        Radio( 
                          value: 2,
                          groupValue: _value,
                          onChanged:(value){
                             setState((){
                          _value = value as int;
                          }
                        );
                       }
                       
                       ),
                        SizedBox(width: 5),
                        Text("Female"),
                        
                      ]
                    ),
                    SizedBox(height: 5,),
                     ElevatedButton(
                       child: Text("Submit"),
                       style: TextButton.styleFrom(backgroundColor: Colors.black),
                       onPressed: (){
                           if (_value == 1) 
                             {
                             Navigator.pushNamed(context, MyRoutes.calorieCalculator);                
                             }
                             else if (_value == 2)
                             {
                             Navigator.pushNamed(context, MyRoutes.calorieCalculator); 
                             }
                     }
            
             ),
                  
                  
                  
                  
                  ]          
                    
                   
                 ),
               )
             )
          
            


    )
    
    );
    }
}

