import 'package:e_commerce_app/Pages/home/ui/home.dart';
//import 'package:e_commerce_app/Pages/login_page.dart';
import 'package:flutter/material.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
   final screenWidth = screenSize.width;
   // final screenHeight = screenSize.height;
    return Scaffold(
      body:Container(
        decoration: const BoxDecoration(
           color: Colors.white,
         
        ),
        width:screenWidth ,
       
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 40,),
            const Text('FRUITABLES',style: TextStyle(fontSize: 28,fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 43, 177, 47)),),
           const  Text("Welcome to Fruitables, Shop it fresh!"),
            const SizedBox(height: 60,),
            Image.asset('assets/girlwithbasket.jpg', height: 350,width: 250),
            const SizedBox(height: 150,),
            SizedBox(
              width: 301,
              height: 40,
              child: ElevatedButton(
                onPressed: (){
                   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:  const Color.fromARGB(255, 43, 177, 47),
                  foregroundColor: Colors.white
                ),
                 child: const Text("Continue")),
            )
          ],
        ),
      )
    );
  }
}