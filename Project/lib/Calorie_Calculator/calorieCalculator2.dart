import 'package:flutter/material.dart';

class CalorieCalculator2 extends StatefulWidget{


@override
_CalorieCalculator2 createState() => _CalorieCalculator2();

}
class _CalorieCalculator2 extends State<CalorieCalculator2> {
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
                           BMR = 9.247* double.parse(w) + 3.098*double.parse(H) - 4.330*int.parse(A) + 447.593;
                           fatloss= BMR-500;
                           muscle= BMR+300;
                          
                           showDialog(

                             context: context,
                             builder: (context){
                              return AlertDialog(
                             backgroundColor: Colors.white,
                             content: Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                               child: Text("Your Daily Calories are $BMR\nCalories for Fat-loss $fatloss\nCalories to Gain Muscle $muscle,"
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