import 'package:block_testing/features/dashboard/bloc/dash_board_bloc.dart';
import 'package:block_testing/features/comment/client/comment_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:block_testing/features/products/bloc/product_bloc.dart';
import 'package:block_testing/features/products/bloc/product_event.dart';
import 'package:block_testing/features/comment/bloc/comment_bloc.dart';
import 'package:block_testing/features/comment/bloc/comment_event.dart';
import 'package:block_testing/features/products/client/product_repository.dart';

abstract class AppBlocProvider {
  static List<BlocProvider> providers = [
    BlocProvider<ProductBloc>(
      create: (context) => ProductBloc(productRepository: ProductRepository())
        ..add(FetchProducts()),
    ),
    BlocProvider<CommentsBloc>(
      create: (context) => CommentsBloc(commentRepository: CommentRepository())
        ..add(FetchComments()),
    ),
    BlocProvider<DashBoardBloc>(
      create: (context) => DashBoardBloc(),
    ),
  ];
}
