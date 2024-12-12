import 'package:flutter/material.dart';
import 'package:gymnasium_simulator/Drawer/database/authService.dart';
import 'package:gymnasium_simulator/utils/routes.dart';



class Login extends StatefulWidget {

@override
_Login createState() => _Login();
}

class _Login extends State<Login> {

final _formkey = GlobalKey<FormState>();
final emailController = TextEditingController();
final passwordController = TextEditingController();
final AuthService _auth = AuthService();


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

         body: Column(
          children: [
          
          Container(
            height:280,
            width: 300,
          child: Image.asset('assets/images/logo.png'),
          ),

          SizedBox(height: 10.0),

          Text(
            "Gymnasium Simulator", 
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
           ),

         Padding(
              padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
              child: Form(
                key: _formkey,
                child: Column(children: [
                TextFormField(
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
                TextFormField(
                 controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                  hintText: "Enter User Password",
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
                
         SizedBox(height: 10.0),       

         ElevatedButton(
          child: Text("Login"),
          style: TextButton.styleFrom(backgroundColor: Colors.black),
          onPressed: () async{
            if (_formkey.currentState!.validate()) 
            {
              await _auth.signIn(emailController.text,  passwordController.text);
              Navigator.pushNamed(context, MyRoutes.splashgrey2);
              setState(() {});
            
           }
            
          },
         ),
        ElevatedButton(
            child: Text("Register"),
          style: TextButton.styleFrom(backgroundColor: Colors.black),
          onPressed: (){
             
          Navigator.pushNamed(context, MyRoutes.registerRoute);
             
          },
          
         ),
        ]
       ),
      ),
     ),
             
     ],
             
    )
   )  
  );
 }
}
