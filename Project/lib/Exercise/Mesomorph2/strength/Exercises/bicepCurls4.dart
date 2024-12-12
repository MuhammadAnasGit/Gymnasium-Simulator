import 'package:flutter/material.dart';

class BicepCurls4 extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
        child: Scaffold(
          resizeToAvoidBottomInset : false,
            appBar: AppBar(
            title: Text("Bicep Curls"),
            backgroundColor: Colors.black,
           ),  
        
           body: Column(
            children: [
            
            Container(
              
            child: Image.asset('assets/images/bicepcurls.gif'),
            height:500,
            width: 500,
            ),
             
              Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                          child: Text("3 set of 6-8 reps with weights that require utilizing 100% of your strength",
                          style: TextStyle(fontWeight: FontWeight.bold))  
                        ),      
              Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                          child: Text("1 more set with max reps with weights that require utilizing 85% of your strength",
                          style: TextStyle(fontWeight: FontWeight.bold))  
                        ),   
              Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                          child: Text("1 more set with max reps with weights that require utilizing 70% of your strength",
                          style: TextStyle(fontWeight: FontWeight.bold))  
                        ),                 


            ]
           ),
          ),
      
    );
  }
}