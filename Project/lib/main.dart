import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gymnasium_simulator/Calorie_Calculator/Gender.dart';
import 'package:gymnasium_simulator/Calorie_Calculator/calorieCalculator.dart';
import 'package:gymnasium_simulator/Calorie_Calculator/calorieCalculator2.dart';
import 'package:gymnasium_simulator/Calories_Burned/Calisthenics.dart';
import 'package:gymnasium_simulator/Calories_Burned/Cycling.dart';
import 'package:gymnasium_simulator/Calories_Burned/Sports.dart';
import 'package:gymnasium_simulator/Calories_Burned/Swimming.dart';
import 'package:gymnasium_simulator/Calories_Burned/Yoga.dart';
import 'package:gymnasium_simulator/Calories_Burned/cardio.dart';
import 'package:gymnasium_simulator/Calories_Burned/dancing.dart';
import 'package:gymnasium_simulator/Calories_Burned/gym.dart';
import 'package:gymnasium_simulator/Calories_Burned/resistanceTraining.dart';
import 'package:gymnasium_simulator/Calories_Burned/ropeSkipping.dart';
import 'package:gymnasium_simulator/Calories_Burned/running.dart';
import 'package:gymnasium_simulator/Calories_Burned/typeOfExercise.dart';
import 'package:gymnasium_simulator/Calories_Burned/walking.dart';
import 'package:gymnasium_simulator/Drawer/bodyTypeInfo.dart';
import 'package:gymnasium_simulator/Drawer/calorie.dart';
import 'package:gymnasium_simulator/Drawer/nutrition.dart';
import 'package:gymnasium_simulator/Drawer/profile/profile.dart';
import 'package:gymnasium_simulator/Drawer/ranking/ranking.dart';
import 'package:gymnasium_simulator/Exercises/AI/bodyRecognition.dart';
import 'package:gymnasium_simulator/Exercises/Ectomorph/Aesthetic/arms.dart';
import 'package:gymnasium_simulator/Exercises/Ectomorph/Aesthetic/back.dart';
import 'package:gymnasium_simulator/Exercises/Ectomorph/Aesthetic/chest.dart';
import 'package:gymnasium_simulator/Exercises/Ectomorph/Exercises3/benchPress3.dart';
import 'package:gymnasium_simulator/Exercises/Ectomorph/Exercises3/bicepCurls3.dart';
import 'package:gymnasium_simulator/Exercises/Ectomorph/Exercises3/butterFly3.dart';
import 'package:gymnasium_simulator/Exercises/Ectomorph/Exercises3/cableChestFly3.dart';
import 'package:gymnasium_simulator/Exercises/Ectomorph/Exercises3/chestDips.dart';
import 'package:gymnasium_simulator/Exercises/Ectomorph/Exercises3/deadlift3.dart';
import 'package:gymnasium_simulator/Exercises/Ectomorph/Exercises3/dumbbellLunges3.dart';
import 'package:gymnasium_simulator/Exercises/Ectomorph/Exercises3/dumbellOverheadPress3.dart';
import 'package:gymnasium_simulator/Exercises/Ectomorph/Exercises3/legExtension3.dart';
import 'package:gymnasium_simulator/Exercises/Ectomorph/Exercises3/pullUp.dart';
import 'package:gymnasium_simulator/Exercises/Ectomorph/Exercises3/reverseFly3.dart';
import 'package:gymnasium_simulator/Exercises/Ectomorph/Exercises3/squats3.dart';
import 'package:gymnasium_simulator/Exercises/Ectomorph2/Strength/pull.dart';
import 'package:gymnasium_simulator/Exercises/Ectomorph2/Strength/push.dart';
import 'package:gymnasium_simulator/Exercises/Ectomorph2/legsEctoStrength.dart';
import 'package:gymnasium_simulator/Exercises/Endomorph/aesthetic/cardioEndo2.dart';
import 'package:gymnasium_simulator/Exercises/Endomorph/aesthetic/upperBodyEndo2.dart';
import 'package:gymnasium_simulator/Exercises/Endomorph2/Strength/fullBodyEndo.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph/aesthetic/backAndTricep.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph/aesthetic/backAndTricep2.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph/aesthetic/chestAndShoulder.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph/aesthetic/chestAndShoulder2.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph/aesthetic/exercises2/bench2.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph/aesthetic/exercises2/butterFly.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph/aesthetic/exercises2/cableBicepCurls.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph/aesthetic/exercises2/cableChestFly2.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph/aesthetic/exercises2/cableFrontRaises.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph/aesthetic/exercises2/cableRow.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph/aesthetic/exercises2/closeGripLatPulldown.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph/aesthetic/exercises2/deadlift2.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph/aesthetic/exercises2/facePull.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph/aesthetic/exercises2/hammerCurls.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph/aesthetic/exercises2/inclinedBenchPress2.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph/aesthetic/exercises2/legPress2.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph/aesthetic/exercises2/reverseFly2.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph/aesthetic/exercises2/seatedOverheadPress.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph/aesthetic/exercises2/skullCrusher.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph/aesthetic/exercises2/squat2.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph/aesthetic/exercises2/supportedPullups.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph/aesthetic/exercises2/tricepDips.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph/aesthetic/exercises2/upwardCableCross.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph/aesthetic/legsAndBicep.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph/aesthetic/legsAndBicep2.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph2/strength/Exercises/benchPress4.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph2/strength/Exercises/bicepCurls4.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph2/strength/Exercises/deadlift4.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph2/strength/Exercises/inclineBenchPress4.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph2/strength/Exercises/latPullDown4.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph2/strength/Exercises/legPress4.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph2/strength/Exercises/seatedOverheadPress4.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph2/strength/Exercises/squat4.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph2/strength/Exercises/tBarRow4.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph2/strength/fullBody1.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph2/strength/fullBody2.dart';
import 'package:gymnasium_simulator/Exercises/Mesomorph2/strength/fullBody3.dart';
import 'package:gymnasium_simulator/Exercises/Strength.dart';
import 'package:gymnasium_simulator/Exercises/Strength2.dart';
import 'package:gymnasium_simulator/Exercises/Strength3.dart';
import 'package:gymnasium_simulator/Exercises/bodyType.dart';
import 'package:gymnasium_simulator/Exercises/days.dart';
import 'package:gymnasium_simulator/Exercises/days2.dart';
import 'package:gymnasium_simulator/Exercises/days3.dart';
import 'package:gymnasium_simulator/Exercises/goals.dart';
import 'package:gymnasium_simulator/Exercises/goals2.dart';
import 'package:gymnasium_simulator/Exercises/goals3.dart';
import 'package:gymnasium_simulator/Exercises/loseFat.dart';
import 'package:gymnasium_simulator/Exercises/Endomorph/aesthetic/upperBodyEndo1.dart';
import 'package:gymnasium_simulator/Nutrition_Calculator/macros.dart';
import 'package:gymnasium_simulator/Nutrition_Calculator/nutritionCalculator.dart';
import 'package:gymnasium_simulator/Nutrition_Calculator/nutritionCalculator2.dart';
import 'package:gymnasium_simulator/Nutrition_Calculator/nutritionCalculator3.dart';
import 'package:gymnasium_simulator/Starting_Screens/Home.dart';
import 'package:gymnasium_simulator/Starting_Screens/Login.dart';
import 'package:gymnasium_simulator/Starting_Screens/Register.dart';
import 'package:gymnasium_simulator/Starting_Screens/Splash.dart';
import 'package:gymnasium_simulator/Starting_Screens/Splash2.dart';
import 'package:gymnasium_simulator/Starting_Screens/wrapper.dart';
import 'package:gymnasium_simulator/Utils/routes.dart';
import 'Exercises/Ectomorph/Aesthetic/legsEctoAes.dart';
import 'Exercises/Ectomorph/Exercises3/bentOverBarbellRows3.dart';
import 'Exercises/Endomorph/aesthetic/LowerBodyEndo2.dart';
import 'Exercises/Endomorph/aesthetic/cardioEndo.dart';
import 'Exercises/Endomorph/aesthetic/exercise/barbellCurls.dart';
import 'Exercises/Endomorph/aesthetic/exercise/benchpress.dart';
import 'Exercises/Endomorph/aesthetic/exercise/bentOverBarbellRows.dart';
import 'Exercises/Endomorph/aesthetic/exercise/bicepCurls.dart';
import 'Exercises/Endomorph/aesthetic/exercise/burpees.dart';
import 'Exercises/Endomorph/aesthetic/exercise/cableChestFly.dart';
import 'Exercises/Endomorph/aesthetic/exercise/calfRaises.dart';
import 'Exercises/Endomorph/aesthetic/exercise/crunches.dart';
import 'Exercises/Endomorph/aesthetic/exercise/deadlift.dart';
import 'Exercises/Endomorph/aesthetic/exercise/declineBenchPress.dart';
import 'Exercises/Endomorph/aesthetic/exercise/dumbbellLunges.dart';
import 'Exercises/Endomorph/aesthetic/exercise/dumbellOverheadPress.dart';
import 'Exercises/Endomorph/aesthetic/exercise/hexSquat.dart';
import 'Exercises/Endomorph/aesthetic/exercise/inclineBenchPress.dart';
import 'Exercises/Endomorph/aesthetic/exercise/killerClimbs.dart';
import 'Exercises/Endomorph/aesthetic/exercise/latPullDown.dart';
import 'Exercises/Endomorph/aesthetic/exercise/legCurls.dart';
import 'Exercises/Endomorph/aesthetic/exercise/legExtension.dart';
import 'Exercises/Endomorph/aesthetic/exercise/legPress.dart';
import 'Exercises/Endomorph/aesthetic/exercise/legRaises.dart';
import 'Exercises/Endomorph/aesthetic/exercise/reverseFly.dart';
import 'Exercises/Endomorph/aesthetic/exercise/run.dart';
import 'Exercises/Endomorph/aesthetic/exercise/squat.dart';
import 'Exercises/Endomorph/aesthetic/exercise/tBarRow.dart';
import 'Exercises/Endomorph/aesthetic/lowerBodyEndo1.dart';
import 'package:camera/camera.dart';

import 'Exercises/Mesomorph/aesthetic/exercises2/declineBenchPress2.dart';


List<CameraDescription>? cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  await Firebase.initializeApp();
  runApp(GymnasiumSimuator());
}

class GymnasiumSimuator extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      initialRoute: "/splash",
      routes: {
        MyRoutes.loginRoute: (context) => Login(),
        MyRoutes.homeRoute: (context) => Home(),
        MyRoutes.registerRoute: (context) => Register(),
        MyRoutes.splashgrey: (context) => Splash(),
        MyRoutes.splashgrey2: (context) =>Splash2(),
        MyRoutes.bodyType: (context) => BodyType(),
        MyRoutes.goals: (context) =>Goals(),
        MyRoutes.goals2: (context) =>Goals2(),
        MyRoutes.goals3: (context) =>Goals3(),
        MyRoutes.nutrition: (context) =>Nutrition(),
        MyRoutes.ranking: (context) =>Ranking(),
        MyRoutes.bodyTypesInfo: (context) =>BodyTypesInfo(),
        MyRoutes.calorie: (context) =>Calorie(),
        MyRoutes.days: (context) =>Days(),
        MyRoutes.days2: (context) =>Days2(),
        MyRoutes.days3: (context) =>Days3(),
        MyRoutes.loseFat: (context) =>LoseFat(),
        MyRoutes.strength: (context) =>Strength(),
        MyRoutes.strength2: (context) =>Strength2(),
        MyRoutes.strength3: (context) =>Strength3(),
        MyRoutes.calorieCalculator: (context) =>CalorieCalculator(),
        MyRoutes.calorieCalculator2: (context) =>CalorieCalculator2(),
        MyRoutes.gender: (context) =>Gender(),
        MyRoutes.macros: (context) =>Macros(),
        MyRoutes.nutritionCalculator: (context) =>NutritionCalculator(),
        MyRoutes.nutritionCalculator2: (context) =>NutritionCalculator2(),
        MyRoutes.nutritionCalculator3: (context) =>NutritionCalculator3(),
        MyRoutes.typeOfExercise: (context) =>TypeOFExercise(),
        MyRoutes.cardio: (context) => Cardio(),
        MyRoutes.gym: (context) => Gym(),
        MyRoutes.walking: (context) => Walking(),
        MyRoutes.running: (context) =>Running(),
        MyRoutes.cycling: (context) =>Cycling(),
        MyRoutes.ropeSkipping: (context) => RopeSkipping(),
        MyRoutes.sports: (context) => Sports(),
        MyRoutes.yoga: (context) =>Yoga(),
        MyRoutes.dancing: (context) =>Dancing(),
        MyRoutes.swimming: (context) =>Swimming(),
        MyRoutes.calisthenics: (context) => Calisthenics(),
        MyRoutes.resistanceTraining: (context) => ResistanceTraining(),
        MyRoutes.profile:(context) => Profile(),
        MyRoutes.wrapper:(context) => Wrapper(),
        MyRoutes.upperBodyEndo1:(context) => UpperBodyEndo1(),
        MyRoutes.benchpress:(context) => BenchPress(),
        MyRoutes.bentOverBarbellRows:(context) => BentOverBarbellRows(),
        MyRoutes.cableChestFly:(context) => CableChestFly(),
        MyRoutes.tBarRos:(context) => TBarRow(),
        MyRoutes.dumbellOverheadPress:(context) =>DumbellOverheadPress(),
        MyRoutes.barbellCurls:(context) => BarbellCurls(),
        MyRoutes.squat :(context) => Squat(),
        MyRoutes.deadlift:(context) => Deadlift(),
        MyRoutes.legPress :(context) => LegPress(),
        MyRoutes.legExtension :(context) => LegExtension(),
        MyRoutes.legCurls :(context) =>LegCurls(),
        MyRoutes.calfRaises:(context) =>CalfRaises(),
        MyRoutes.lowerBodyEndo1:(context) =>LowerBodyEndo1(),
        MyRoutes.run:(context) =>Run(),
        MyRoutes.burpees:(context) =>Burpees(),
        MyRoutes.legRaises:(context) =>LegRaises(),
        MyRoutes.crunches:(context) =>Crunches(),
        MyRoutes.cardioEndo:(context) =>CardioEndo(),
        MyRoutes.latPullDown:(context) =>LatPullDown(),
        MyRoutes.reverseFly:(context) =>ReverseFly(),
        MyRoutes.bicepCurls:(context) =>BicepCurls(),
        MyRoutes.declineBenchPress:(context) =>DeclineBenchPress(),
        MyRoutes.inclineBenchPress:(context) =>InclineBenchPress(),
        MyRoutes.upperBodyEndo2:(context) => UpperBodyEndo2(),
        MyRoutes.hexSquat:(context) =>HexSquat(),
        MyRoutes.dumbbellLunges:(context) =>DumbbellLunges(),
        MyRoutes.lowerBodyEndo2:(context) => LowerBodyEndo2(),
        MyRoutes.killerClimbs:(context) => KillerClimbs(),
        MyRoutes.cardioEndo2:(context) => CardioEndo2(),
        MyRoutes.facePull:(context) =>FacePull(),
        MyRoutes.cableFrontRaises:(context) =>CableFrontRaises(),
        MyRoutes.seatedOverheadPress:(context) =>seatedOverheadPress(),
        MyRoutes.benchpress2 :(context) =>BenchPress2(),
        MyRoutes.cableChestFly2:(context) => CableChestFly2(),
        MyRoutes.butterFly2:(context) => ButterFly(),
        MyRoutes.chestAndShoulder:(context) => chestAndShoulder(),
        MyRoutes.tricepDips:(context) =>TricepDips(),
        MyRoutes.skullCrusher:(context) =>SkullCrusher(),
        MyRoutes.closeGripLatPulldown:(context) =>CloseGripLatPulldown(),
        MyRoutes.cableRow :(context) =>CableRow(),
        MyRoutes.supportedPullups:(context) => SupportedPullUps(),
        MyRoutes.deadlift2:(context) => Deadlift2(),
        MyRoutes.backAndTricep:(context) => BackAndTricep(),
        MyRoutes.hammerCurls:(context) =>HammerCurls(),
        MyRoutes.squat2:(context) =>Squat2(),
        MyRoutes.cableBicepCurls :(context) =>CableBicepCurls(),
        MyRoutes.legPress2:(context) => LegPress2(),
        MyRoutes.dumbbelllunges2:(context) => DumbbellLunges(),
        MyRoutes.legsAndBicep:(context) => LegsAndBicep(),
        MyRoutes.bodyRecognition:(context) => BodyRecognition(),
        MyRoutes.inclineBenchPress2:(context) => InclineBenchPress2(),
        MyRoutes.declineBenchPress2:(context) => DeclineBenchPress2(),
        MyRoutes.upwardCableCross:(context) => upwardCableCross(),
        MyRoutes.chestAndShoulder2:(context) => ChestAndShoulder2(),
        MyRoutes.tBarRows2:(context) => TBarRow(),
        MyRoutes.backAndTricep2:(context) => BackAndTricep2(),
        MyRoutes.legsAndBicep2:(context) => LegsAndBicep2(),
        MyRoutes.reverFly2:(context) => ReverseFly2(),
        MyRoutes.benchPress3:(context) => BenchPress3(),
        MyRoutes.chestDips:(context) => ChestDips(),
        MyRoutes.butterFly3:(context)=> ButterFly3(),
        MyRoutes.cableChestFly3:(context) => CableChestFly3(),
        MyRoutes.chest:(context) => Chest(),
        MyRoutes.back:(context) => Back(),
        MyRoutes.deadlift3:(context) => Deadlift3(),
        MyRoutes.latPullDown3:(context)=> ButterFly3(),
        MyRoutes.pullUp:(context) => PullUp(),
        MyRoutes.bentOverBarbellRows3:(context) => BentOverBarbellRows3(),
        MyRoutes.back:(context) => Back(),
        MyRoutes.deadlift3:(context) => Deadlift3(),
        MyRoutes.latPullDown3:(context)=> ButterFly3(),
        MyRoutes.pullUp:(context) => PullUp(),
        MyRoutes.bentOverBarbellRows3:(context) => BentOverBarbellRows3(),
        MyRoutes.dumbbellLunges3:(context) => DumbbellLunges3(), 
        MyRoutes.squat3:(context) => Squat3(),
        MyRoutes.legExtension3:(context) => LegExtension3(),
        MyRoutes.legsEctoAes:(context) => LegsEctoAes(),
        MyRoutes.bicepCurls3:(context) => BicepCurls3(),
        MyRoutes.skullCrusher3:(context) => SkullCrusher(),
        MyRoutes.dumbellOverheadPress3:(context) => DumbellOverheadPress3(),
        MyRoutes.reverseFly3:(context) => ReverseFly3(),
        MyRoutes.arms:(context) => Arms(),
        MyRoutes.benchPress4:(context) => BenchPress4(),
        MyRoutes.deadlift4:(context) => Deadlift4(),
        MyRoutes.latPullDown4 :(context) => LatPullDown4(),
        MyRoutes.legPress4:(context) => LegPress4(),
        MyRoutes.bicepCurls4:(context) => BicepCurls4(),
        MyRoutes.fullBody:(context)=> FullBody(),
        MyRoutes.squat4:(context) => Squat4(),
        MyRoutes.inclinBenchPress4:(context) => InclineBenchPress4(),
        MyRoutes.tBarRow4 :(context) => TBarRow4(),
        MyRoutes.seatedOverheadPress4:(context) => seatedOverheadPress4(),
        MyRoutes.fullBody2:(context) => FullBody2(),
        MyRoutes.fullBody3:(context)=> FullBody3(),
        MyRoutes.fullBodyEndo:(context)=> FullBodyEndo(),
        MyRoutes.push:(context)=>Push(),
        MyRoutes.pull:(context) => Pull(),
        MyRoutes.legsEctoStrength:(context)=> LegsEctoStrength(),
        







 


        










        
        
        




   
      },

     
    );
  }
}

  



