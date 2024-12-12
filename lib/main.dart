//import 'package:e_commerce_app/Pages/front_page.dart';
import 'package:e_commerce_app/Pages/front_page.dart';
import 'package:e_commerce_app/wishlist/bloc/wishlist_bloc.dart';
import 'package:flutter/material.dart';
//import 'package:firebase_messaging/firebase_messaging.dart';
//import 'package:flutter/material.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'firebase_options.dart';

void main() {
  runApp(
    BlocProvider(
      create: (_) => WishlistBloc()..add(LoadWishlist()),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      title: "E-Commerce App",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:
       const FrontPage()
      //LoginPage(),
      //SuccessLogin()
      //ProductDetail()
      //const HomePage()

    );
  }
}

