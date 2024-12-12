import 'package:flutter/material.dart';

class Run extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
        child: Scaffold(
          resizeToAvoidBottomInset : false,
            appBar: AppBar(
            title: Text("Run"),
            backgroundColor: Colors.black,
           ),  
        
           body: Column(
            children: [
            
            Container(
              
            child: Image.asset('assets/images/run.gif'),
            height:500,
            width: 500,
            ),
            
              Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                          child: Text("Run for 15-30 minutes",
                          style: TextStyle(fontWeight: FontWeight.bold))  
                        ),          


            ]
           ),
          ),
      
    );
  }
}