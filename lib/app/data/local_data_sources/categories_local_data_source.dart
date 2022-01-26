import 'package:injectable/injectable.dart';
import 'package:objectbox/objectbox.dart';

import 'package:plannero/app/data/entities/categories_entities.dart';

abstract class ICategoriesLocalDataSource {
  List<Category> getAll();
  Category get(int id);
  void delete(int id);
  void edit(Category obj);
  void add(Category obj);
}

@LazySingleton(as: ICategoriesLocalDataSource)
class CategoriesLocalDataSource implements ICategoriesLocalDataSource {
  final Store store;
  CategoriesLocalDataSource({
    required this.store,
  });

  @override
  void add(Category obj) {
    store.box<Category>().put(obj);
  }

  @override
  void delete(int id) {
    store.box<Category>().remove(id);
  }

  @override
  void edit(Category obj) {
    store.box<Category>().put(obj);
  }

  @override
  Category get(int id) {
    return store.box<Category>().get(id)!;
  }

  @override
  List<Category> getAll() {
    return store.box<Category>().getAll();
  }
}
