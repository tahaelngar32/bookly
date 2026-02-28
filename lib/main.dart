import 'package:bookly1/Features/home/data/reops/home_repo_impl.dart';
import 'package:bookly1/Features/home/presentation/manger/feauterd_books_cubit/featuerd_books_cubit.dart';
import 'package:bookly1/Features/home/presentation/manger/newset_book_cubit/newset_book_cubit.dart';
import 'package:bookly1/constens.dart';
import 'package:bookly1/core/utils/app_router.dart';
import 'package:bookly1/core/utils/servies_locaitor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocaitor(); // جاية من مكتبة get
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatuerdBooksCubit(
            getIt.get<
                HomeRepoImpl>(), //servies_locaitor موجوده في الكلاس ده  مكتبة لاختصار الكود
          )..featchFeatuerdBooks(), //بتنفذ كود بعد الرتيرن مباشرة استدعاء للدالة
        ),
        BlocProvider(
          create: (context) => NewsetBookCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.route,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          // ThemeData.dark().textTheme عشان يفهم ان الثيم بتاعي دارك
        ),
        // home: const SplashView(),
      ),
    );
  }
}
