import 'package:bloc/bloc.dart';
import 'package:bookly1/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly1/Features/home/data/reops/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newset_book_state.dart';

class NewsetBookCubit extends Cubit<NewsetBookState> {
  NewsetBookCubit(this.homeRepo) : super(NewsetBookInitial());

  final HomeRepo homeRepo;
  Future featchNewsetBooks() async {
    emit(NewsetBookLoading());
    var result = await homeRepo.fetchNewsetBooks();
    result.fold((feailuer) {
      emit(NewsetBookFailuer(feailuer.errMessage));
    }, (books) {
      emit(NewsetBookSuccess(books));
    });
  }
}
