import 'package:flutter/material.dart';

class BenchPress4 extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
        child: Scaffold(
          resizeToAvoidBottomInset : false,
            appBar: AppBar(
            title: Text("Bench Press"),
            backgroundColor: Colors.black,
           ),  
        
           body: Column(
            children: [
            
            Container(
              
            child: Image.asset('assets/images/benchpress.gif'),
            height:500,
            width: 500,
            ),
             Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                          child: Text("1 warm-up set of 6 reps with weights that require utilizing 60% of your strength",
                           style: TextStyle(fontWeight: FontWeight.bold),
                           )  
                        ),
              Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                          child: Text("3 set of 4-6 reps with weights that require utilizing 80% of your strength",
                          style: TextStyle(fontWeight: FontWeight.bold))  
                        ),   

                         Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                          child: Text("1 set of 1-2 reps with weights that require utilizing 90-100% of your strength",
                          style: TextStyle(fontWeight: FontWeight.bold))  
                        ),          
       


            ]
           ),
          ),
      
    );
  }
}