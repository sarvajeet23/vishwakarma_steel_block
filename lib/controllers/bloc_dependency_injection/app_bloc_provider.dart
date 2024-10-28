import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vishwakarama_steel_bloc/Modules/dashboard/bloc/dash_board_bloc.dart';
import 'package:vishwakarama_steel_bloc/Modules/comment/client/comment_repository.dart';
import 'package:vishwakarama_steel_bloc/Modules/home/bloc/home_page_bloc.dart';
import 'package:vishwakarama_steel_bloc/Modules/products/bloc/product_bloc.dart';
import 'package:vishwakarama_steel_bloc/Modules/products/client/product_repository.dart';
import 'package:vishwakarama_steel_bloc/Modules/products/bloc/product_event.dart';
import 'package:vishwakarama_steel_bloc/Modules/comment/bloc/comment_bloc.dart';
import '../../Modules/home/bloc/home_page_event.dart';

abstract class AppBlocProvider {
  static List<BlocProvider> providers = [
    BlocProvider<ProductBloc>(
      create: (context) => ProductBloc(
        productRepository: RepositoryProvider.of<ProductRepository>(context),
      )..add(FetchProducts()),
    ),
    BlocProvider<CommentBloc>(
      create: (context) => CommentBloc(
        RepositoryProvider.of<CommentRepository>(context), // No named parameter
      )..add(const CommentEvent.fetchData()),
    ),
    BlocProvider<DashBoardBloc>(
      create: (context) => DashBoardBloc(),
    ),
    BlocProvider<HomePageBloc>(
      create: (context) => HomePageBloc()..add(const HomePageEvent.fetchData()),
    ),
  ];
}
