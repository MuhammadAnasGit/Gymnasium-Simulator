import 'package:flutter/material.dart';

class BicepCurls3 extends StatelessWidget {
 
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
                          child: Text("5 set of 8-10 reps with weights that require utilizing 60% of your strength",
                          style: TextStyle(fontWeight: FontWeight.bold))  
                        ),      
                              


            ]
           ),
          ),
      
    );
  }
}