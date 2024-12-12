import 'package:flutter/material.dart';


class NutritionCalculator extends StatefulWidget{


@override
_NutritionCalculator createState() => _NutritionCalculator();

}

class _NutritionCalculator extends State<NutritionCalculator> {


TextEditingController calories = new TextEditingController();  

final _formkey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    
    return Material(
      color: Colors.white,
        
        child: Scaffold(
        resizeToAvoidBottomInset : false,
          appBar: AppBar(
          title: Text("Macros For BodyBuilding"),
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
                           double carbs_bodyBuilding= (40/100)*int.parse(c);
                           double carbs_bodyBuilding_gram= (carbs_bodyBuilding/4);
                           double fats_bodyBuilding= (30/100)*int.parse(c);
                           double fats_bodyBuilding_gram= (fats_bodyBuilding/9);
                           double protein_bodyBuilding= (30/100)*int.parse(c);
                           double protein_bodyBuilding_gram= (protein_bodyBuilding/4);


                           
                           showDialog(

                             context: context,
                             builder: (context){
                              return AlertDialog(
                             backgroundColor: Colors.white,   
                             content: Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                               child: Text("Carbs $carbs_bodyBuilding_gram g\n\nFats $fats_bodyBuilding_gram g\n\nProtein $protein_bodyBuilding_gram g"
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
