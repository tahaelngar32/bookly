import 'package:bookly1/Features/home/domain/entities/book_entity.dart';
import 'package:bookly1/Features/home/domain/repos/home_repo.dart';
import 'package:bookly1/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

class FeacheFutuereBookUseCases {
  final HomeRepo homeRepo;

  FeacheFutuereBookUseCases(this.homeRepo);
  Future<Either<Failures, List<BookEntity>>> featchFutuereBooks() {
    // فايدتها انها لو بتعمل فحص للصلحيات فيستحسن يكون هنا
    return homeRepo.featchFutuereBooks();
  }
}
