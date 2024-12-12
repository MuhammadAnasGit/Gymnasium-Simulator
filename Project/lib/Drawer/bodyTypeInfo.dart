
import 'package:flutter/material.dart';

class BodyTypesInfo extends StatelessWidget{

 @override
 Widget build(BuildContext){
   
   return Material(
     color: Colors.white,
    child: Scaffold(
         
          appBar: AppBar(
            title: Text("Body Types"),
            backgroundColor: Colors.black,
          ),
          body: Container(
            child: InteractiveViewer(
              panEnabled: false, // Set it to false to prevent panning. 
              minScale: 0.5,
              maxScale: 4, 

              child: SingleChildScrollView(
                child: Column(
                  children: [
                          
                    Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                          child: Text("In the 1940s, an American psychologist named William Herbert Sheldon categorized the human physique into three distinct categories. Another term used to describe a unique body type is known as a somatotype."
                          )  
                        ),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5,horizontal:10),
                         child: Image.asset('assets/images/bodytypes.jpg'),
                        ),
                        
                     Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          child: Text("Ectomorph:                                                                                                              ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          
                          ) 
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          child: Text("Ectomorphs are individuals that you might refer to as ‘hard-gainers’. These individuals exhibit characteristics such as a smaller frame, and thinner limbs. They are typically taller than the other two somatotypes and have a hard time gaining weight and building size. You’ll see ectomorphs in sports such as long-distance running, basketball, and triathletes. Muscular endurance is a key attribute of this body type. These individuals are typically thyroid dominant. They burn more calories at a rest and tend to have a high carb tolerance. If you have a friend who guzzles down red-velvet Krispy Kreme doughnuts without gaining weight, they are most likely an ecto. On top of this, they are also SNS (sympathetic nervous systems) dominant. This simply means that they have a higher sensitivity to stress hormones such as adrenaline and noradrenaline. The macronutrient profile this body type should eat more of is carbs. A higher carb and lower-fat diet is an ectomorph's best friend. Fat is typically satiating and for this body type, we want the individual to eat more calories to assist with gaining more weight. Protein should roughly be kept at 25-30% of the total daily macronutrient split for the ectomorph individual."
                         ) 
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          child: Text("Mesomorph:                                                                                                              ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          
                          ) 
                        ),
                         Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          child: Text("Mesomorphs are typically defined as having that ‘athletic look’, broad shoulders and a narrow waist. They have a medium frame structure, typically packs on an impressive amount of lean body mass (for active meso's that is). These are the LeBron James, Usain Bolts, and Michael Phelps of the sporting industry. Mesomorphs are prevalently seen in sporting activities of an explosive nature such as gymnastics, sprinting, and combat sports. Speed and agility is a mesomorphs specialty. Testosterone is a mesomorph’s best friend.This enhanced level of natural testosterone production results in a significantly increased predisposition for building more muscle and shedding off body fat. Meso’s are also growth hormone (GH) dominant which explains why they typically pack on more muscle and find it easier to reduce body fat. The growth hormone is a vital hormone that stimulates growth in all tissues of the body – and essentially functions as a messenger to tell your body to grow! If you’re a meso, your macronutrient profile will consist of a variety of fats, carbs, and protein. A meso body works best with a balance between all essential macros; a preference over carbs or fats may indicate whether you choose one more than the other. Protein should roughly consist of 30% of your total daily macronutrient split."
                          ) 
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          child: Text("Endomorh:                                                                                                              ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          
                          ) 
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          child: Text("Endomorphs are typically defined as having a larger frame structure than their counterparts. If you were born with broad shoulders and a broad waist, you are most likely an endomorph.Not all overweight people are endo’s; neither are all endo’s overweight. Endomorph celebrities include that of Jennifer Lopez, Beyoncé, and Marilyn Munroe – all individuals with impressive physiques. If you were blessed with the structure of an endomorph, you are suitable for sporting activities such as rugby football, power activities (e.g. the shot-put), and Olympic weightlifting. Strength is your middle name if you rock this body type. Endomorphs typically store fat easier and find it harder to shed off unwanted body fat. This may due to endo’s being naturally less active than their counterparts. While an ectomorph may burn off excess calories through movement in the form of exercise or NEAT (non-exercise activity thermogenesis) tendencies/activities such as fidgeting, an endomorph typically does not expend that surplus of calories and rather stores it instead. Less expenditure means fewer calories burned. Therefore, this profile results in more energy storage in the body causing an increase in lean body mass and adipose (fat) tissue. Therefore, endomorphs have a lower carb tolerance, and all foods rich in carbs should be consumed during/after exercise, to maximize muscle-building potential and body composition adaptations (e.g. minimize fat gain). Protein should be kept at roughly 30-35% of an endo’s macronutrient split, and fats should comprise a higher amount of the calorie intake. Prioritize fats and protein – and keep carbs on the lower end of the equation."

                         ) 
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          child: Text("Note: there is a fine line between someone being overweight and an endomorph. Not all overweight people are endo’s; neither are all endo’s overweight.",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          
                          ) 
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

