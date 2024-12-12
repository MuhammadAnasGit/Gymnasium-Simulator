import 'dart:ffi';

import 'package:flutter/material.dart';


class NutritionCalculator2 extends StatefulWidget{


@override
_NutritionCalculator2 createState() => _NutritionCalculator2();

}

class _NutritionCalculator2 extends State<NutritionCalculator2> {


TextEditingController calories = new TextEditingController();  

final _formkey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    
    return Material(
      color: Colors.white,
        
        child: Scaffold(
        resizeToAvoidBottomInset : false,
          appBar: AppBar(
          title: Text("Macros for Maintenance"),
          backgroundColor: Colors.black,
         ), 
         body:  Form(
           key: _formkey,
           child: Padding(
             padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 24),
             child: Column(
              children: [
                 TextFormField(
                      controller: calories,
                      decoration: InputDecoration(
                      hintText: "Enter your Daily Calorie intake",
                      labelText: "Calories",
                      
                      ), 
                  keyboardType: TextInputType.number,
                  validator: (value){
                   if(value!.isEmpty)
                    {
                      return "Required";
                    }
                    
                  
                  },
                ),
                      
                SizedBox(height: 10,),

                  ElevatedButton(
                   child: Text("Calculate"),
                   style: TextButton.styleFrom(backgroundColor: Colors.black),
                   onPressed: (){
                       if (_formkey.currentState!.validate()) 
                         { 
                           String c = calories.text;
                           double carbs_maintenance= (35/100)*int.parse(c);
                           double carbs_maintenance_gram= (carbs_maintenance/4);
                           double fats_maintenance= (30/100)*int.parse(c);
                           double fats_maintenance_gram= (fats_maintenance/9);
                           double protein_maintenance= (35/100)*int.parse(c);
                           double protein_maintenance_gram= (protein_maintenance/4);


                           
                           showDialog(

                             context: context,
                             builder: (context){
                              return AlertDialog(
                             backgroundColor: Colors.white,   
                             content: Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                               child: Text("Carbs $carbs_maintenance_gram g\n\nFats $fats_maintenance_gram g\n\nProtein $protein_maintenance_gram g"
                               ,style: TextStyle(color: Colors.black),textAlign: TextAlign.center,
                               ),
                              
                             ),
                             
                             );
                           },
                        );
                      
                           
                         }
                   }
                  ),
          
      ]
     )
     )
   )
  )
);
}
}
