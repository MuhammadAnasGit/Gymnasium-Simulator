import 'package:flutter/material.dart';

class Deadlift2 extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
        child: Scaffold(
          resizeToAvoidBottomInset : false,
            appBar: AppBar(
            title: Text("Dead lift"),
            backgroundColor: Colors.black,
           ),  
        
           body: Column(
            children: [
            
            Container(
              
            child: Image.asset('assets/images/deadlift.gif'),
            height:500,
            width: 500,
            ),
            Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                          child: Text("2 warm-up set of 10 reps with weights that require utilizing 60-75% of your strength",
                          style: TextStyle(fontWeight: FontWeight.bold))  
                        ),  
             
              Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                          child: Text("3 set of 10 reps with weights that require utilizing 60-75% of your strength",
                          style: TextStyle(fontWeight: FontWeight.bold))  
                        ),          


            ]
           ),
          ),
      
    );
  }
}