import 'package:bookly1/Features/home/domain/entities/book_entity.dart';
import 'package:bookly1/Features/home/domain/repos/home_repo.dart';
import 'package:bookly1/Features/home/domain/use_cases/use_cases.dart';
import 'package:bookly1/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

class FeacheNewsetBooksUseCases extends UseCase<List<BookEntity>,NoParams> {
  final HomeRepo homeRepo;

  FeacheNewsetBooksUseCases(this.homeRepo);
  @override
  Future<Either<Failures, List<BookEntity>>> call([NoParams? params]) async {
    return await homeRepo.featchNewestBooks();
  }

}