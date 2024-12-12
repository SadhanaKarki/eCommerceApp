import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistInitial()) {
    on<LoadWishlist>(_onLoadWishlist);
    on<AddProductToWishlist>(_onAddProductToWishlist);
    on<RemoveProductFromWishlist>(_onRemoveProductFromWishlist);
  }

  Future<void> _onLoadWishlist(
      LoadWishlist event, Emitter<WishlistState> emit) async {
    emit(WishlistLoading());
    final prefs = await SharedPreferences.getInstance();
    final wishlist = prefs.getStringList('favorite_products') ?? [];
    emit(WishlistLoaded(wishlist));
  }

  Future<void> _onAddProductToWishlist(
      AddProductToWishlist event, Emitter<WishlistState> emit) async {
    if (state is WishlistLoaded) {
      final currentState = state as WishlistLoaded;
      final updatedWishlist = List<String>.from(currentState.wishlist)
        ..add(event.product);

      final prefs = await SharedPreferences.getInstance();
      await prefs.setStringList('favorite_products', updatedWishlist);

      emit(WishlistLoaded(updatedWishlist));
    }
  }

  Future<void> _onRemoveProductFromWishlist(
      RemoveProductFromWishlist event, Emitter<WishlistState> emit) async {
    if (state is WishlistLoaded) {
      final currentState = state as WishlistLoaded;
      final updatedWishlist = List<String>.from(currentState.wishlist)
        ..remove(event.product);

      final prefs = await SharedPreferences.getInstance();
      await prefs.setStringList('favorite_products', updatedWishlist);

      emit(WishlistLoaded(updatedWishlist));
    }
  }
}

