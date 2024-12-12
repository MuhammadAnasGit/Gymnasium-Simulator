import 'package:flutter/material.dart';

class InclineBenchPress extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
        child: Scaffold(
          resizeToAvoidBottomInset : false,
            appBar: AppBar(
            title: Text("Incline Bench Press"),
            backgroundColor: Colors.black,
           ),  
        
           body: Column(
            children: [
            
            Container(
              
            child: Image.asset('assets/images/inclinebenchpress.gif'),
            height:500,
            width: 500,
            ),
             Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                          child: Text("1 warm-up set of 10-12 reps with weights that require utilizing 30-40% of your strength",
                           style: TextStyle(fontWeight: FontWeight.bold),
                           )  
                        ),
              Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                          child: Text("3 set of 6-8 reps with weights that require utilizing 70% of your strength",
                          style: TextStyle(fontWeight: FontWeight.bold))  
                        ),          


            ]
           ),
          ),
      
    );
  }
}