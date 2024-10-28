import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vishwakarama_steel_bloc/Modules/products/client/product_repository.dart';
import 'package:vishwakarama_steel_bloc/Modules/products/model/product.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository _productRepository;
  ProductBloc(this._productRepository) : super(const ProductState.initial()) {
    on<ProductEvent>((event, emit) async {
      if (event is _FetchData) {
        emit(const ProductState.loading());
        try {
          final List<Products> products =
              await _productRepository.fetchPostsProducts();
          emit(ProductState.loaded(products));
        } catch (e) {
          emit(ProductState.error("Error$e"));
        }
      }
    });
  }
}
