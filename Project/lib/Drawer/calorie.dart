import 'package:flutter/material.dart';

class Calorie extends StatelessWidget{

 @override
 Widget build(BuildContext){
   
   return Material(
     color: Colors.white,
    child: Scaffold(
         
          appBar: AppBar(
            title: Text("Calorie"),
            backgroundColor: Colors.black,
          ),
          body: Container(
            child:  InteractiveViewer(
              panEnabled: false, // Set it to false to prevent panning. 
              minScale: 0.5,
              maxScale: 4, 
              child: SingleChildScrollView(
                child: Column(
                    children: [
                       
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      child: Text("A calorie is a unit of energy. In nutrition, calories refer to the energy people get from the food and drink they consume, and the energy they use in physical activity.",
                      
                      ) 
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                      child: Text("Calories are essential for human health. Everyone requires different amounts of energy each day, depending on age, sex, size, and activity level.",
                    
                      )  
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                      child: Text("The human body needs calories to survive. Without energy, the cells in the body would die, the heart and lungs would stop, and the organs would not be able to carry out the basic processes needed for living. People absorb this energy from food and drink.",
                     
                     
                      )
                      ),  
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                      child: Text("Below are the calorific values of three main components of food:                                     ",
                    
                      )
                      ), 
                      Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                      child: Text("1g of carbohydrates contains 4 kcal                                                                      ",
                    
                      )
                      ), 
                      Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                      child: Text("1g of protein contains 4 kcal                                                                      ",
                    
                      )
                      ), 
                      Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                      child: Text("1g of fat contains 9 kcal                                                                       ",
                    
                      )
                      ), 
                      Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                      child: Text("1g of fat contains 9 kcal                                                                       ",
                    
                      )
                      ), 
                     
                       Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5,horizontal:10),
                         child: Image.asset('assets/images/calories.png'),
                       ),
                      
                       
                     
                     ],
                    
                          
                          
                
                   
                        ),
              ),
            ),
       ),

    ),
   );
 }
}
 


 