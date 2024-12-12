import 'dart:ffi';

import 'package:flutter/material.dart';


class NutritionCalculator3 extends StatefulWidget{


@override
_NutritionCalculator3 createState() => _NutritionCalculator3();

}

class _NutritionCalculator3 extends State<NutritionCalculator3> {


TextEditingController calories = new TextEditingController();  

final _formkey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    
    return Material(
      color: Colors.white,
        
        child: Scaffold(
        resizeToAvoidBottomInset : false,
          appBar: AppBar(
          title: Text("Macros for Weight Loss"),
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
                           double carbs_weightLoss= (30/100)*int.parse(c);
                           double carbs_weightLoss_gram= (carbs_weightLoss/4);
                           double fats_weightLoss= (20/100)*int.parse(c);
                           double fats_weightLoss_gram= (fats_weightLoss/9);
                           double protein_weightLosse= (50/100)*int.parse(c);
                           double protein_weightLoss_gram= (protein_weightLosse/4);


                           
                           showDialog(

                             context: context,
                             builder: (context){
                              return AlertDialog(
                             backgroundColor: Colors.white,   
                             content: Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                               child: Text("Carbs $carbs_weightLoss_gram g\n\nFats $fats_weightLoss_gram g\n\nProtein $protein_weightLoss_gram g"
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
