import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_actions.freezed.dart';

@freezed
class CategoriesActions with _$CategoriesActions {
  const factory CategoriesActions.taskAdded() = _TaskAdded;
  const factory CategoriesActions.categoryEdited() = _CategoryEdited;
  const factory CategoriesActions.categoryDeleted() = _CategoryDeleted;
  const factory CategoriesActions.taskChecked(String title) = _TaskChecked;
  const factory CategoriesActions.taskUnchecked(String title) = _TaskUnchecked;
  const factory CategoriesActions.taskDeleted(String title) = _TaskDeleted;
  const factory CategoriesActions.taskAddedToFavorites(String title) = _TaskAddedToFavorites;
  const factory CategoriesActions.taskRemovedFromFavorites(String title) = _TaskRemovedFromFavorites;
}
