import 'package:bloc/bloc.dart';
import 'package:bookly1/Features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'featuerd_books_state.dart';

class FeatuerdBooksCubit extends Cubit<FeatuerdBooksState> {
  FeatuerdBooksCubit() : super(FeatuerdBooksInitial());
}
