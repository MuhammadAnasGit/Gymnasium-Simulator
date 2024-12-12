import 'package:flutter/material.dart';
import 'package:gymnasium_simulator/Widget/myDrawer.dart';
import 'package:gymnasium_simulator/utils/routes.dart';

class BodyType extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gymnasium Simulator"),
        backgroundColor: Colors.black,
     ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(70.0),
          child: Column(
              children: [
                Text(
                "Select Your Body Structure",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
                  ElevatedButton(
                    child: 
                     Text("Mesomorph"),
                     style: TextButton.styleFrom(
                        backgroundColor: Colors.black,
                        maximumSize: Size(200, 100)
                         ),
                     onPressed: (){
                       Navigator.pushNamed(context, MyRoutes.goals2);
                     },
                  ),
                  ElevatedButton(
                    child: 
                     Text("Endomorph"),
                     style: TextButton.styleFrom(
                        backgroundColor: Colors.black,
                        maximumSize: Size(200, 100)
                         ),
                     onPressed: (){
                       Navigator.pushNamed(context, MyRoutes.goals);
                     },
                  ),
                  ElevatedButton(
                    child: 
                     Text("Ectomorph"),
                     style: TextButton.styleFrom(
                        backgroundColor: Colors.black,
                        maximumSize: Size(200, 100)
                         ),
                     onPressed: (){
                       
                       Navigator.pushNamed(context, MyRoutes.goals3);
                     },
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(
                    child: 
                     Text("Find out your Body type"),
                     style: TextButton.styleFrom(
                        backgroundColor: Colors.black,
                        maximumSize: Size(300, 200)
                         ),
                     onPressed: (){
                       Navigator.pushNamed(context, MyRoutes.bodyRecognition);
                     
                     },
                  ),
            ],
          ),
        ),
      ),
    drawer: MyDrawer(),
    );
  }
}
