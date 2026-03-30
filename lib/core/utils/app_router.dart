import 'package:bookly1/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly1/Features/home/data/reops/home_repo_impl.dart';
import 'package:bookly1/Features/home/presentation/manger/similer_books_cubit/similer_books_cubit.dart';
import 'package:bookly1/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly1/Features/home/presentation/views/home_view.dart';
import 'package:bookly1/Features/search/presentation/views/search_view.dart';
import 'package:bookly1/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:bookly1/core/utils/servies_locaitor.dart';

abstract class AppRouter {
  static const kSearchView = '/searchView';
  static const kHomeView = '/homeView';
  static const kBookDetalisView = '/BookDetalisView';
  static final route = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetalisView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilerBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: BookDetailsView(bookModel: state.extra as BookModel),
          // extra حتتبعت من ال onTap في ال BookListViewItem
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
