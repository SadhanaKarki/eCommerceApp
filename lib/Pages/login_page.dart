import 'package:e_commerce_app/Pages/success_login.dart';
import 'package:e_commerce_app/widgets/circular_icons_buttons.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
         icon: Icon(Icons.arrow_back), // Your leading icon
         onPressed: () {
           Navigator.pop(context);
         },
        ),
        title:  Center(child: Text('Sign In ',style: TextStyle(fontSize: 17, color: Color.fromARGB(255, 83, 82, 82)),)), 
      ),
      body: Center(
        child: Container(
          height: 530,
          width: 390,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15)
          ),
          child: Login(),

        )),

    );
  }
   //Custom Widget
 
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey =GlobalKey<FormState>();
    TextEditingController email= TextEditingController();
   TextEditingController password= TextEditingController();
   
   //Regular expn for email validation
     String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email';
    }
    String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  @override

  void dispose(){
      email.dispose();
      password.dispose();
      super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return  Form(
      key: _formkey,
      child:
           ListView(
              padding:const  EdgeInsets.only(top: 15,bottom: 20,left: 40,right: 40),
              children: [
                Center(child: Text('Welcome Back', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 0, 0, 0)),)),
                const SizedBox(height: 10,),
                Center(child: Text("Sign in with your email and password or continue with your social media accounts",style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 83, 82, 82)),),),
                const SizedBox(height: 20,),
                Expanded(
                  child: TextFormField(
                    controller: email,
                    decoration:  InputDecoration(
                      labelText: 'Email',
                      hintText: 'enter your email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                      )  
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator:validateEmail
                  ),
                ),
                const SizedBox(height: 20,),
                Expanded(
                  child: TextFormField(
                    controller: password,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      labelText: 'Password',
                      hintText: 'enter your password',
                      suffixIcon: Icon(Icons.remove_red_eye_outlined)
                    ),
                    validator:(value) {
                      if(value!.isEmpty){
                        return"Please enter your password";
                      }
                      else if(value.length<8){
                        return"Your password must be 8 characters or more";
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 16,),
                TextButton(
                  onPressed: (){}, 
                  child: Text("Forgot Password?",style: TextStyle(),)
                  ),
                const SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: (){
                    if (_formkey.currentState!.validate()) {
                      Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => SuccessLogin()),
                     );
                    }
                     
                  }, 
                 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    )
                  ),
                   child: Container(
                    height: 40,
                    width: 80,
                    child: const Center(child: Text('Sign in' , style: TextStyle(color: Colors.white),))),
                  ),
                const SizedBox(height: 15,), 
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularIconsButtons(myIcon: "assets/google-icon.png"),
                      const SizedBox(width: 9,),
                      CircularIconsButtons(myIcon: "assets/fb-icon.webp"),
                      const SizedBox(width: 9,),
                       CircularIconsButtons(myIcon: "assets/twitter-icon.png"),

                    ],
                  ),
                ),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",style: TextStyle(
                      fontSize: 15,color: Colors.black
                    ),),
                    TextButton(
                      onPressed: (){}, 
                      child: Text("Sign Up",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.green),)
                     )
                  ],
                ),
                
            
              ],
            )
    );
  }
}