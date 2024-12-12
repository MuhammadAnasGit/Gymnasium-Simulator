import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gymnasium_simulator/Drawer/models/user_variables.dart';
import 'package:gymnasium_simulator/Drawer/models/user_data.dart';
import '../models/user_data.dart';


class firestore{

final String uid;
firestore({ required this.uid});

final CollectionReference firebaseCollection = FirebaseFirestore.instance.collection("user");

Future updateUserData(String name, String country, int noOfWeeksExercising) async {
  return await firebaseCollection.doc(uid).set({
    'name': name,
    'country':country,
    'noOfWeeksExercising':noOfWeeksExercising,

  });
}

List<User_Variables> _listOfUserData(QuerySnapshot list){

 return list.docs.map((doc) {

     return User_Variables(
     name: doc.get('name') ?? '', 
     country: doc.get('country') ?? '', 
     noOfWeeksExercising: doc.get('noOfWeeksExercising') ?? 0,
     );


   }).toList();
}
// List of All User Data
Stream<List<User_Variables>> get users{
 return
   firebaseCollection.snapshots().map(_listOfUserData);
}

UserData _userDataFromSnapshot(DocumentSnapshot snapshot){
 return UserData(
   uid: uid, 
   name: snapshot.get('name'), 
   country: snapshot.get('country'), 
   noOfWeeksExercising: snapshot.get('noOfWeeksExercising'), 
  );

}

 // Stream for Single user data
Stream<UserData> get userData {

  return firebaseCollection.doc(uid).snapshots().map(_userDataFromSnapshot);

}




}