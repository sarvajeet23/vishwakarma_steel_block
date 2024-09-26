import 'package:block_testing/bloc/dash_board/dash_board_bloc.dart';
import 'package:block_testing/data/repositories/comment_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:block_testing/bloc/product/product_bloc.dart';
import 'package:block_testing/bloc/product/product_event.dart';
import 'package:block_testing/bloc/comment_bloc/comment_bloc.dart';
import 'package:block_testing/bloc/comment_bloc/comment_event.dart';
import 'package:block_testing/data/repositories/product_repository.dart';

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
