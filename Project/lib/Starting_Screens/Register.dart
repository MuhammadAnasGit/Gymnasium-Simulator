import 'package:flutter/material.dart';
import 'package:gymnasium_simulator/utils/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../Drawer/database/firestore.dart';


class Register extends StatefulWidget{
@override
_Register createState() =>_Register();
}

class _Register extends State<Register>{
final _formkey = GlobalKey<FormState>();
final emailController = TextEditingController();
final passwordController = TextEditingController();


 @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Scaffold(
        resizeToAvoidBottomInset : false,
          appBar: AppBar(
          title: Text("Gymnasium Simulator"),
          backgroundColor: Colors.black,
         ),  
         body:Form(
           key: _formkey,
           child: Column(children: [
                  Container(
                      height:280,
                      width: 300,
                      child: Image.asset('assets/images/signup.png'),
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
                  child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                      hintText: "Enter User E-mail",
                      labelText: "User ID",
                      ),
                      validator: (value){
                       if(value!.isEmpty)
                        {
                          return "Required";
                        }
                        else if(value.isNotEmpty){
         
                          if(value.contains("@"))
                             {
                              if(value.contains("gmail") || value.contains("hotmail"))
                                {
                                  if(value.endsWith(".com"))
                                      {
                                        return null;
                                      }
                                  return "Enter valid Gmail or Hotmail Email Address";    
                                }
                               return "Enter Gmail or Hotmail Email Address";
                             }
                          return "Enter a valid email"; 
                        }
                      
                      },
                    ),
                ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 32),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                      hintText: "Enter Your Password",
                      labelText: "Password",
                      ),
                      validator: (value){
                        if(value!.isEmpty)
                        {
                          return "Required";
                        }
                        else if(value.length<6)
                        {
                          return "Password should atleast have 6 characters";
                        }
                        return null;
                      },
                    ),
                  ),
                   SizedBox(height: 20.0),
                  ElevatedButton(
                    child: Text("Register"),
                            style: TextButton.styleFrom(backgroundColor: Colors.black),
                            onPressed: () async{
                               if (_formkey.currentState!.validate()) 
                            {
                              UserCredential result = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text,password: passwordController.text);
                              User? user = result.user; 
                              await firestore(uid: user!.uid).updateUserData('name', 'country', 0);                          
                              Navigator.pushNamed(context, MyRoutes.loginRoute);
                              setState(() {});
                            }
                            
                            
                           },
                             
                              
                  ),
                 ]
                ),
               ),
              )
            );
           }
}
