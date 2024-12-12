part of 'wishlist_bloc.dart';

@immutable
sealed class WishlistEvent {}

final class AddProductToWishlist extends WishlistEvent {
  final String product;

  AddProductToWishlist(this.product);
}

final class RemoveProductFromWishlist extends WishlistEvent {
  final String product;

  RemoveProductFromWishlist(this.product);
}

final class LoadWishlist extends WishlistEvent {}
