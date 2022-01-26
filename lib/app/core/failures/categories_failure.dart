import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_failure.freezed.dart';

@freezed
class CategoriesFailure with _$CategoriesFailure{
  const factory CategoriesFailure.noCategory() = NoCategory;
}