import 'package:flutter/material.dart';

class DeclineBenchPress2 extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
        child: Scaffold(
          resizeToAvoidBottomInset : false,
            appBar: AppBar(
            title: Text("Decline Bench Press"),
            backgroundColor: Colors.black,
           ),  
        
           body: Column(
            children: [
            
            Container(
              
            child: Image.asset('assets/images/declinebenchpress.gif'),
            height:500,
            width: 500,
            ),
             
              Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                          child: Text("3 set of 8-10 reps with weights that require utilizing 70% of your strength",
                          style: TextStyle(fontWeight: FontWeight.bold))  
                        ),          


            ]
           ),
          ),
      
    );
  }
}