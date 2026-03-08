import 'package:bloc/bloc.dart';
import 'package:bookly1/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly1/Features/home/data/reops/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similer_books_state.dart';

class SimilerBooksCubit extends Cubit<SimilerBooksState> {
  SimilerBooksCubit(this.homeRepo) : super(SimilerBooksInitial());
  final HomeRepo homeRepo;
  Future featchSimilerBooks({required String category}) async {
    emit(SimilerBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((feailuer) {
      emit(SimilerBooksFailuer(feailuer.errMessage));
    }, (books) {
      emit(SimilerBooksSuccess(books));
    });
  }
}
