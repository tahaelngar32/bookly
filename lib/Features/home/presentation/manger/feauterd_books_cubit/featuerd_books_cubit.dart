import 'package:bloc/bloc.dart';
import 'package:bookly1/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly1/Features/home/data/reops/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featuerd_books_state.dart';

class FeatuerdBooksCubit extends Cubit<FeatuerdBooksState> {
  FeatuerdBooksCubit(this.homeRepo) : super(FeatuerdBooksInitial());

  final HomeRepo homeRepo;
  Future featchFeatuerdBooks() async {
    emit(FeatuerdBooksLoding());
    var result = await homeRepo.fetchFeaturedBooks();  
    result.fold((feailuer) {
      emit(FeatuerdBooksFailuer(feailuer.errMessage));
    }, (books) {
      emit(FeatuerdBooksSuccess(books));
    });
  }
}
