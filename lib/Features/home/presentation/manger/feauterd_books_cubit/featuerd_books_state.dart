part of 'featuerd_books_cubit.dart';

sealed class FeatuerdBooksState extends Equatable {
  const FeatuerdBooksState();

  @override
  List<Object> get props => [];
}

final class FeatuerdBooksInitial extends FeatuerdBooksState {}
final class FeatuerdBooksLoding extends FeatuerdBooksState {}
final class FeatuerdBooksFailuer extends FeatuerdBooksState {
  const FeatuerdBooksFailuer(this.errorMessag);
  final String errorMessag;
}
final class FeatuerdBooksSuccess extends FeatuerdBooksState {
  const FeatuerdBooksSuccess(this.books);
  final List<BookModel> books;
}
