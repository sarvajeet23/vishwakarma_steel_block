import 'package:block_testing/Modules/comment/client/comment_repository.dart';
import 'package:block_testing/Modules/products/client/product_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AppRepositoryProvider {
  static List<RepositoryProvider> providers = [
    RepositoryProvider<CommentRepository>(
      create: (context) => CommentRepository(),
    ),
    RepositoryProvider<ProductRepository>(
      create: (context) => ProductRepository(),
    ),
  ];
}
