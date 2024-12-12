import 'package:flutter/material.dart';
import 'package:gymnasium_simulator/utils/routes.dart';

class TypeOFExercise extends StatefulWidget{

  
@override
_TypeOfExercise createState() => _TypeOfExercise();
}

class _TypeOfExercise extends State<TypeOFExercise> {

int _value =0;

 @override
  Widget build(BuildContext context) {
    
    return Material(
      color: Colors.white,
        
        child: Scaffold(
         
        resizeToAvoidBottomInset : false,
          appBar: AppBar(
          title: Text("Type Of Exercise"),
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
                        Text("Cardio"),
                        
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
                        Text("Gym Activities"),
                        
                      ]
                    ),
                    SizedBox(height: 5,),
                     ElevatedButton(
                       child: Text("Submit"),
                       style: TextButton.styleFrom(backgroundColor: Colors.black),
                       onPressed: (){
                           if (_value == 1) 
                             {
                             Navigator.pushNamed(context, MyRoutes.cardio);                
                             }
                             else if (_value == 2)
                             {
                             Navigator.pushNamed(context, MyRoutes.gym); 
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
