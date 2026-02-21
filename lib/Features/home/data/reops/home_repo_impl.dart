import 'dart:convert';

import 'package:bookly1/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly1/Features/home/data/reops/home_repo.dart';
import 'package:bookly1/core/errors/failures.dart';
import 'package:bookly1/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:programming&key=AIzaSyCJ7dKqYprN1efu0naDMlGspBH3WyrTQqU&Sorting=newest');
      List<BookModel> books = [];
      for (var item in data['item']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books); // right  القيمة الصحيحة جاية من ايزر
    } on Exception catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
