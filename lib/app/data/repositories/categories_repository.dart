import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:plannero/app/core/failures/categories_failure.dart';

import 'package:plannero/app/data/entities/categories_entities.dart';
import 'package:plannero/app/data/local_data_sources/categories_local_data_source.dart';

abstract class ICategoriesRepository {
  Either<CategoriesFailure, List<CategoryView>> getAll();
  Either<CategoriesFailure, CategoryView> get(int id);
  Either<CategoriesFailure, List<CategoryView>> delete(int id);
  Either<CategoriesFailure, List<CategoryView>> edit(Category obj);
  Either<CategoriesFailure, List<CategoryView>> add(Category obj);
}

@LazySingleton(as: ICategoriesRepository)
class CategoriesRepository implements ICategoriesRepository {
  final ICategoriesLocalDataSource categoriesLocalDataSource;
  CategoriesRepository({
    required this.categoriesLocalDataSource,
  });

  CategoryView convertCategoryToCategoryView(Category category) {
    return CategoryView(
      id: category.id,
      name: category.name,
      color: category.color,
      numOfCompletedTasks:
          category.tasks.where((task) => task.isChecked == true).length,
      totalNumOfTasks: category.tasks.length,
      tasks: category.tasks.toList(),
    );
  }

  List<CategoryView> convertCategoriesToCategoriesView(
    List<Category> categories,
  ) {
    List<CategoryView> categoriesView = [];
    for (Category category in categories) {
      categoriesView.add(
        CategoryView(
          id: category.id,
          name: category.name,
          color: category.color,
          numOfCompletedTasks:
              category.tasks.where((task) => task.isChecked == true).length,
          totalNumOfTasks: category.tasks.length,
          tasks: category.tasks.toList(),
        ),
      );
    }

    return categoriesView;
  }

  @override
  Either<CategoriesFailure, List<CategoryView>> add(Category obj) {
    categoriesLocalDataSource.add(obj);
    return Right(convertCategoriesToCategoriesView(
      categoriesLocalDataSource.getAll(),
    ));
  }

  @override
  Either<CategoriesFailure, List<CategoryView>> delete(int id) {
    categoriesLocalDataSource.delete(id);
    return Right(convertCategoriesToCategoriesView(
      categoriesLocalDataSource.getAll(),
    ));
  }

  @override
  Either<CategoriesFailure, List<CategoryView>> edit(Category obj) {
    categoriesLocalDataSource.edit(obj);
    return Right(convertCategoriesToCategoriesView(
      categoriesLocalDataSource.getAll(),
    ));
  }

  @override
  Either<CategoriesFailure, List<CategoryView>> getAll() {
    return Right(convertCategoriesToCategoriesView(
      categoriesLocalDataSource.getAll(),
    ));
  }

  @override
  Either<CategoriesFailure, CategoryView> get(int id) {
    return Right(convertCategoryToCategoryView(
      categoriesLocalDataSource.get(id),
    ));
  }
}
