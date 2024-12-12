import 'package:flutter/material.dart';


class Calisthenics extends StatefulWidget{


@override
_Calisthenics createState() => _Calisthenics();

}

class _Calisthenics extends State<Calisthenics> {


TextEditingController weight = new TextEditingController();  
TextEditingController time = new TextEditingController();  


final _formkey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    
    return Material(
      color: Colors.white,
        
        child: Scaffold(
        resizeToAvoidBottomInset : false,
          appBar: AppBar(
          title: Text("Calisthenics"),
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
                      controller: time,
                      decoration: InputDecoration(
                      hintText: "Enter the duration in minutes",
                      labelText: "Time",
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
                           String t=time.text; 
                           double MET= 3.5 * double.parse(w)  * double.parse(t) ;
                           double MET_walking = 3.8 * MET;
                           double calories_burned = (MET_walking)/200; 
                           showDialog(

                             context: context,
                             builder: (context){
                              return AlertDialog(
                             backgroundColor: Colors.white,   
                             content: Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                               child: Text("Calories Burned are $calories_burned"
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