import 'package:flutter/material.dart';

class CircularIconsButtons extends StatelessWidget {
  final String myIcon;
  const CircularIconsButtons({required this.myIcon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){}, 
      style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
        padding: EdgeInsets.all(15),
        backgroundColor: const Color.fromARGB(255, 243, 243, 243),
        shadowColor: const Color.fromARGB(255, 134, 133, 133).withOpacity(0.2), 
        elevation: 10,
      ),
      child: Image.asset(myIcon,width: 15,height: 15,)
      )
    ;
  }
}