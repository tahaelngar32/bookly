import 'package:bookly1/Features/home/domain/entities/book_entity.dart';
import 'package:bookly1/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
Future<Either<Failures,List<BookEntity>>> featchFutuereBooks();
Future<Either<Failures,List<BookEntity>>> featchNewestBooks();
}