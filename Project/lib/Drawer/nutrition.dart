import 'package:flutter/material.dart';

class Nutrition extends StatelessWidget{

 @override
 Widget build(BuildContext){
   
   return Material(
     color: Colors.white,
    child: Scaffold(
         
          appBar: AppBar(
            title: Text("Nutrition"),
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
                        child: Text("Nutrition, the assimilation by living organisms of food \nmaterials that enable them to grow, maintain themselves, and reproduce.",
                        
                        ) 
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                        child: Text("Nutrients provide nourishment.\nProteins, carbohydrates, fat,vitamins, minerals, fiber, and water are all nutrients.If people do not have the right balance of nutrients in their diet, their risk of developing certain health conditions increases.",
                      
                        )  
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                        child: Text("What are macronutrient                                                                               ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                       
                        )
                        ),  
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                        child: Text("Macronutrients are nutrients that people need in relatively large quantities.                      ",
                      
                        )
                        ), 
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2,horizontal:10),
                          child: Container(
                            height:150,
                            width: 300,
                            child: Image.asset('assets/images/nutrition.jpg'),
                          ),
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

