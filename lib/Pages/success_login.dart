import 'package:e_commerce_app/Pages/home/ui/home.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class SuccessLogin extends StatefulWidget {
  const SuccessLogin({super.key});

  @override
  State<SuccessLogin> createState() => _SuccessLoginState();
}

class _SuccessLoginState extends State<SuccessLogin> {
    

  @override
  Widget build(BuildContext context) {
  final screenSize = MediaQuery.of(context).size;
  final screenWidth = screenSize.width;
 // final screenHeight = screenSize.height;
    return Scaffold(
      body: Container(
         width:screenWidth ,
         child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            const Text('Login Success ',style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 83, 82, 82)),),
            const SizedBox(height: 30,),
            Container(
              height: 200,
              width: 200,
              decoration:const  BoxDecoration(
              // color: Colors.red,

                image: DecorationImage(
                  fit: BoxFit.cover,
                  image:AssetImage("assets/checkmarkgreen.png",))
              ),
              ),   //ERROR
            const SizedBox(height: 30,),
            const Text("Login  Success",style: TextStyle(fontSize:23,fontWeight: FontWeight.bold ),),
   
            const SizedBox(height: 170,),
             ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => HomePage()),
                      );
                  }, 
                 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    )
                  ),
                   child: Container(
                    height: 45,
                    width: 260,
                    child: const Center(child: Text('Go to home' , style: TextStyle(color: Colors.white),))),
                  ),
          
  
          ],
         ),
      ),
    );
  }
}