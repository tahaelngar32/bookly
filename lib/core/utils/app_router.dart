import 'package:bookly1/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly1/Features/home/presentation/views/home_view.dart';
import 'package:bookly1/Features/search/presentation/views/search_view.dart';
import 'package:bookly1/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

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
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
