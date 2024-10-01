import 'package:block_testing/Modules/dashboard/bloc/dash_board_bloc.dart';
import 'package:block_testing/Modules/comment/client/comment_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:block_testing/Modules/products/bloc/product_bloc.dart';
import 'package:block_testing/Modules/products/bloc/product_event.dart';
import 'package:block_testing/Modules/comment/bloc/comment_bloc.dart';
import 'package:block_testing/Modules/comment/bloc/comment_event.dart';
import 'package:block_testing/Modules/products/client/product_repository.dart';

abstract class AppBlocProvider {
  static List<BlocProvider> providers = [
    BlocProvider<ProductBloc>(
      create: (context) => ProductBloc(
        productRepository: RepositoryProvider.of<ProductRepository>(context),
      )..add(FetchProducts()),
    ),
    BlocProvider<CommentsBloc>(
      create: (context) => CommentsBloc(
        commentRepository: RepositoryProvider.of<CommentRepository>(context),
      )..add(FetchComments()),
    ),
    BlocProvider<DashBoardBloc>(
      create: (context) => DashBoardBloc(),
    ),
  ];
}
