import 'package:injectable/injectable.dart';
import 'package:objectbox/objectbox.dart';

abstract class IHomeLocalDataSource {
  getAll();

  getId(id);

  delete(id);

  edit(id);

  add(category);
}

@LazySingleton(as: IHomeLocalDataSource)
class HomeLocalDataSource implements IHomeLocalDataSource {
  final Store store;
  HomeLocalDataSource({
    required this.store,
  });

  @override
  add(category) {
    throw UnimplementedError();
  }

  @override
  delete(id) {
    throw UnimplementedError();
  }

  @override
  edit(id) {
    throw UnimplementedError();
  }

  @override
  getAll() {
    throw UnimplementedError();
  }

  @override
  getId(id) {
    throw UnimplementedError();
  }
}
