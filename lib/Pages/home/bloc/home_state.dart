part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

abstract class HomeActionState extends HomeState {}

class HomeInitial extends HomeState{}

class HomeLoadingState extends HomeState{}

class HomeLoadedSuccessStae extends HomeState{
  final List<Fruit> fruitproducts;

  HomeLoadedSuccessStae({required this.fruitproducts});
}

class HomeErrorState extends HomeState {}
class HomeNavigateToWishlistPageActionState extends HomeActionState {}

class HomeNavigateToCartPageActionState extends HomeActionState {}

class HomeProductItemWishlistedActionState extends HomeActionState {}

class HomeProductItemCartedActionState extends HomeActionState {}
