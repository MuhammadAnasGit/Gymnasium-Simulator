import 'package:flutter/material.dart';
import 'package:gymnasium_simulator/utils/routes.dart';

class Macros extends StatefulWidget{

  
@override
_Macros createState() => _Macros();
}

class _Macros extends State<Macros> {

int _value =0;

 @override
  Widget build(BuildContext context) {
    
    return Material(
      color: Colors.white,
        
        child: Scaffold(
         
        resizeToAvoidBottomInset : false,
          appBar: AppBar(
          title: Text("Nutrition Calculator"),
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
                        Text("Body Building"),
                        
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
                        Text("Maintenance"),
                        
                      ]
                    ),
                    SizedBox(height: 10,),
          
                     Row(
                      children:[ 
                        Radio( 
                          value: 3,
                          groupValue: _value,
                          onChanged:(value){
                             setState((){
                          _value = value as int;
                          }
                        );
                       }
                       
                       ),
                        SizedBox(width: 5),
                        Text("Fat Loss"),
                        
                      ]
                    ),
                     ElevatedButton(
                       child: Text("Submit"),
                       style: TextButton.styleFrom(backgroundColor: Colors.black),
                       onPressed: (){
                           if (_value == 1) 
                             {
                             Navigator.pushNamed(context, MyRoutes.nutritionCalculator);                
                             }
                             else if (_value == 2)
                             {
                             Navigator.pushNamed(context, MyRoutes.nutritionCalculator2); 
                             }
                              else if (_value == 3)
                             {
                             Navigator.pushNamed(context, MyRoutes.nutritionCalculator3); 
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
