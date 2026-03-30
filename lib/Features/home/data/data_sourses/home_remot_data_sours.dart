import 'package:bookly1/Features/home/domain/entities/book_entity.dart';

abstract class HomeRemotDataSours {
  Future<List<BookEntity>> featchFutuereBooks();
  Future<List<BookEntity>> featchNewsetBooks();
}


class HomeRemotDataSoursImpl implements HomeRemotDataSours {
  @override
  Future<List<BookEntity>> featchFutuereBooks() {
    // TODO: implement featchFutuereBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> featchNewsetBooks() {
    // TODO: implement featchNewsetBooks
    throw UnimplementedError();
  }
}