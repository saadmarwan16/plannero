import 'package:injectable/injectable.dart';
import 'package:plannero/app/data/local_data_sources/home_local_data_source.dart';

abstract class IHomeRepository {
  getAll();

  getId(id);

  delete(id);

  edit(id);

  add(obj);
}

@LazySingleton(as: IHomeRepository)
class HomeRepository implements IHomeRepository {
  final IHomeLocalDataSource homeLocalDataSource;
  HomeRepository({
    required this.homeLocalDataSource,
  });

  @override
  add(obj) {
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
