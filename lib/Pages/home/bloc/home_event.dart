part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomeInitialEvent extends HomeEvent{}

class HomeProductWishlistButtonClickedEvent extends HomeEvent{
  final Fruit clickedProduct;

  HomeProductWishlistButtonClickedEvent(this.clickedProduct);
}

class HomeProductCartButtonClickedEvent extends HomeEvent {
  final Fruit clickedProduct;
  HomeProductCartButtonClickedEvent({
    required this.clickedProduct,
  });
}

class HomeWishlistButtonNavigateEvent extends HomeEvent{}

class HomeCartButtonNavigateEvent extends HomeEvent{}

