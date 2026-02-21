import 'package:bookly1/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly1/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>>
      fetchNewsetBooks(); //Eitherمكتبة جاية من dartz وديا اضافة بتخليني اضيف 2 رتيرن
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks();
}
