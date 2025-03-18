import 'package:e_commerce_app/Pages/home/ui/fruit_cards.dart';
import 'package:e_commerce_app/wishlist/ui/wishlist.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
       
        body: Container(
          margin: EdgeInsets.only(left: 5,right: 5, top: 15),
          child: ListView(
            children: [
              
            
              
               Container(
                margin: EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text("Home",style:TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
                    SizedBox(width: 190,),

                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.favorite_border_outlined)),
                    SizedBox(width: 27,),

                    Icon(Icons.shopping_cart_outlined)
                  ],
                ),
               ),
               Container(
                 height: 90,
                 width: 300,
                 margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                 padding: EdgeInsets.all(15),
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 122, 204, 95),
                 ),
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                
                   children: [
                     Text("Seasonal Surprise",style:TextStyle(fontSize: 15,color: Colors.white)),
                     Text("Flat 10% off on every item",style:TextStyle(fontSize: 20, fontWeight: FontWeight.w600 ,color: Colors.white) ,)
                   ],
                 ),
               ),
               Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  margin: EdgeInsets.fromLTRB(25, 15, 25, 15),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 237, 236, 236),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      prefixIconConstraints:
                          BoxConstraints(maxHeight: 20, minWidth: 15),
                      border: InputBorder.none,
                      hintText: "Search for fruits,vegetables and other",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                    
                  ),
                ),
                Container( 
                  
                  child: TabBar(
                  tabs: [
                    
                    Tab(text: "Fruits"),
                    Tab(text: "Vegetables",),
                    Tab(text: "Exotic",),
                    Tab(text: "Organic",),
                  ],
                  labelColor: Colors.green,
                  labelStyle: TextStyle(fontWeight: FontWeight.w700),
                  unselectedLabelColor: const Color.fromARGB(255, 60, 59, 59),
                  indicatorColor: Colors.green,
                  indicator: null,
                  dividerColor: Colors.white,
                                ),
                ),
              
           
              Container(
                height: 500,
                margin: EdgeInsets.only(left: 15,right: 15),
                child: TabBarView(
                  children: [
                    Center(
                      child:  Container(
                        child: FruitCards()
                          ),
                      ),

                    Center(child: Text('vegetable content')),

                    Center(child: Text('Exotic Content')),

                    Center(child: Text('Organic Content')),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}