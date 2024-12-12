import 'package:flutter/material.dart';

class LatPullDown extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
        child: Scaffold(
          resizeToAvoidBottomInset : false,
            appBar: AppBar(
            title: Text("Lat Pull Down"),
            backgroundColor: Colors.black,
           ),  
        
           body: Column(
            children: [
            
            Container(
              
            child: Image.asset('assets/images/latpulldown.gif'),
            height:500,
            width: 500,
            ),
             
              Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                          child: Text("3 set of 10-12 reps with weights that require utilizing 60-75% of your strength",
                          style: TextStyle(fontWeight: FontWeight.bold))  
                        ),          


            ]
           ),
          ),
      
    );
  }
}