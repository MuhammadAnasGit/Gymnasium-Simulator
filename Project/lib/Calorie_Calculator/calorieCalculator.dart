import 'package:flutter/material.dart';


class CalorieCalculator extends StatefulWidget{


@override
_CalorieCalculator createState() => _CalorieCalculator();

}

class _CalorieCalculator extends State<CalorieCalculator> {


TextEditingController weight = new TextEditingController();  
TextEditingController height = new TextEditingController();  
TextEditingController age = new TextEditingController();  

final _formkey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    
    return Material(
      color: Colors.white,
        
        child: Scaffold(
        resizeToAvoidBottomInset : false,
          appBar: AppBar(
          title: Text("Calorie Calculator"),
          backgroundColor: Colors.black,
         ), 
         body:  Form(
           key: _formkey,
           child: Padding(
             padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 24),
             child: Column(
              children: [
                 TextFormField(
                      controller: weight,
                      decoration: InputDecoration(
                      hintText: "Enter your weight in KG",
                      labelText: "Weight",
                      
                      ), 
                  keyboardType: TextInputType.number,
                  validator: (value){
                   if(value!.isEmpty)
                    {
                      return "Required";
                    }
                    
                  
                  },
                ),
                      
                 
                 TextFormField(
                      controller: height,
                      decoration: InputDecoration(
                      hintText: "Enter your height in cm",
                      labelText: "Height",
                      ), 
                       keyboardType: TextInputType.number,
                       validator: (value){
                         if(value!.isEmpty)
                        {
                          return "Required";
                        }
                      }
                 ),
                 TextFormField(
                      controller: age,
                      decoration: InputDecoration(
                      hintText: "Enter your Age",
                      labelText: "Age",
                      ), 
                      keyboardType: TextInputType.number,
                      validator: (value){
                         if(value!.isEmpty)
                        {
                          return "Required";
                        }
                        
                      }

                 ),





              SizedBox(height: 10,),

                  ElevatedButton(
                   child: Text("Calculate"),
                   style: TextButton.styleFrom(backgroundColor: Colors.black),
                   onPressed: (){
                       if (_formkey.currentState!.validate()) 
                         { 
                           String w = weight.text;
                           String H=height.text; 
                           String A=age.text;
                           double BMR;
                           double fatloss;
                           double muscle;
                           BMR = 13.39* double.parse(w) + 4.799*double.parse(H) - 5.677*int.parse(A) + 88.362;
                           fatloss= BMR-500;
                           muscle= BMR+300;
                           showDialog(

                             context: context,
                             builder: (context){
                              return AlertDialog(
                             backgroundColor: Colors.white,   
                             content: Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                               child: Text("Your Daily Calories are $BMR\n\nCalories for Fat-loss $fatloss\n\nCalories to Gain Muscle $muscle"
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
