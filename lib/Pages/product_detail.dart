import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30,),
          Row(
           
           children: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, 
            child: Text("<Back",style: TextStyle(color: Colors.black, fontSize: 15),)
            ),
            const SizedBox(width: 390,),
            Icon(Icons.shopping_cart_outlined),
           ],
          ),

          Container(
            height: 300,
            child: Center(
                child: Image.asset(
                  'assets/fruits/apple.jpg', 
                   
                ),
              ),
          ),
          const SizedBox(height: 10,),
          
         const  Padding(
            padding:  EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Apples",style: TextStyle(fontSize: 27,fontWeight: FontWeight.w600),),
                Text("Nepali Product",style: TextStyle(color: Color.fromARGB(255, 113, 112, 112)),)
              ],
            ),
          ),

          const SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                   width: 130, 
                   height: 40,
                   decoration: BoxDecoration(
                   border: Border.all(
                    color: Colors.grey,
                    width: 1.0, 
                   ),
                    borderRadius: BorderRadius.circular(8),
                   ),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: (){}, child: Icon(Icons.remove)),
                      Text("1"),
                      TextButton(onPressed: (){}, child: Icon(Icons.add)),


                    ],
                   ),
            
                ),
                Text("Rs.250/kg",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
              ],
            ),
          ),

          const Padding(
            padding:  EdgeInsets.fromLTRB(10,20,10,30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("About the Product",style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 97, 96, 96),fontWeight: FontWeight.w400),),
                Text("The apples are from jumla Nepal which are delivered to kathmandu . They are juicy enough to not to have you drink any water, just have these apples.",style: TextStyle(fontSize: 13,color: Colors.grey,fontWeight: FontWeight.w200),)

              ],
            ),

          ),

          ElevatedButton(onPressed: (){}, 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shopping_cart_outlined),
              Text("Add to cart")
            ],
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange
          ),
          )
          
        ],
      ),
    );
  }
}