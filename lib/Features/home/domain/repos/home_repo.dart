import 'package:bookly1/Features/home/domain/entities/book_entity.dart';

abstract class HomeRepo{
Future<List<BookEntity>> featchFutuereBooks();
Future<List<BookEntity>> featchNewestBooks();
}