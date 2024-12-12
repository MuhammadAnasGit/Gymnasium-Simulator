import 'package:flutter/material.dart';

class ReverseFly2 extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
        child: Scaffold(
          resizeToAvoidBottomInset : false,
            appBar: AppBar(
            title: Text("Reverse Fly"),
            backgroundColor: Colors.black,
           ),  
        
           body: Column(
            children: [
            
            Container(
              
            child: Image.asset('assets/images/reversefly.gif'),
            height:500,
            width: 500,
            ),
             
              Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                          child: Text("3 set of 16-18 reps with weights that require utilizing 40-50% of your strength",
                          style: TextStyle(fontWeight: FontWeight.bold))  
                        ),          


            ]
           ),
          ),
      
    );
  }
}