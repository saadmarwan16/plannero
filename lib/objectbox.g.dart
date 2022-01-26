// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:objectbox/flatbuffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'app/data/entities/categories_entities.dart';
import 'app/data/entities/task_entities.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 3385730804273320853),
      name: 'Category',
      lastPropertyId: const IdUid(3, 8542680929259300685),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 4053235151788656101),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 2757857085145507812),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 8542680929259300685),
            name: 'color',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[
        ModelBacklink(name: 'tasks', srcEntity: 'Task', srcField: '')
      ]),
  ModelEntity(
      id: const IdUid(2, 6765683118342881173),
      name: 'Task',
      lastPropertyId: const IdUid(9, 6248232960723514787),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 6690988965994048817),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 5359970738153969273),
            name: 'title',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 4601573777786241135),
            name: 'description',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 219849865158764398),
            name: 'isChecked',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 1087228655407855742),
            name: 'isFavorite',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 8904634104823411220),
            name: 'date',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 7837165056659467450),
            name: 'priority',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 1666345602974914097),
            name: 'color',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 6248232960723514787),
            name: 'categoryId',
            type: 11,
            flags: 520,
            indexId: const IdUid(1, 7236805020169306992),
            relationTarget: 'Category')
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(2, 6765683118342881173),
      lastIndexId: const IdUid(1, 7236805020169306992),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    Category: EntityDefinition<Category>(
        model: _entities[0],
        toOneRelations: (Category object) => [],
        toManyRelations: (Category object) => {
              RelInfo<Task>.toOneBacklink(
                      9, object.id, (Task srcObject) => srcObject.category):
                  object.tasks
            },
        getId: (Category object) => object.id,
        setId: (Category object, int id) {
          object.id = id;
        },
        objectToFB: (Category object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          fbb.startTable(4);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, nameOffset);
          fbb.addInt64(2, object.color);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Category(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              name:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 6, ''),
              color:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 8, 0));
          InternalToManyAccess.setRelInfo(
              object.tasks,
              store,
              RelInfo<Task>.toOneBacklink(
                  9, object.id, (Task srcObject) => srcObject.category),
              store.box<Category>());
          return object;
        }),
    Task: EntityDefinition<Task>(
        model: _entities[1],
        toOneRelations: (Task object) => [object.category],
        toManyRelations: (Task object) => {},
        getId: (Task object) => object.id,
        setId: (Task object, int id) {
          object.id = id;
        },
        objectToFB: (Task object, fb.Builder fbb) {
          final titleOffset = fbb.writeString(object.title);
          final descriptionOffset = fbb.writeString(object.description);
          final dateOffset = fbb.writeString(object.date);
          fbb.startTable(10);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, titleOffset);
          fbb.addOffset(2, descriptionOffset);
          fbb.addBool(3, object.isChecked);
          fbb.addBool(4, object.isFavorite);
          fbb.addOffset(5, dateOffset);
          fbb.addInt64(6, object.priority);
          fbb.addInt64(7, object.color);
          fbb.addInt64(8, object.category.targetId);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Task(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              title:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 6, ''),
              description:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 8, ''),
              isChecked: const fb.BoolReader()
                  .vTableGet(buffer, rootOffset, 10, false),
              isFavorite: const fb.BoolReader()
                  .vTableGet(buffer, rootOffset, 12, false),
              date:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 14, ''),
              priority:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 16, 0),
              color:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 18, 0));
          object.category.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 20, 0);
          object.category.attach(store);
          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [Category] entity fields to define ObjectBox queries.
class Category_ {
  /// see [Category.id]
  static final id = QueryIntegerProperty<Category>(_entities[0].properties[0]);

  /// see [Category.name]
  static final name = QueryStringProperty<Category>(_entities[0].properties[1]);

  /// see [Category.color]
  static final color =
      QueryIntegerProperty<Category>(_entities[0].properties[2]);
}

/// [Task] entity fields to define ObjectBox queries.
class Task_ {
  /// see [Task.id]
  static final id = QueryIntegerProperty<Task>(_entities[1].properties[0]);

  /// see [Task.title]
  static final title = QueryStringProperty<Task>(_entities[1].properties[1]);

  /// see [Task.description]
  static final description =
      QueryStringProperty<Task>(_entities[1].properties[2]);

  /// see [Task.isChecked]
  static final isChecked =
      QueryBooleanProperty<Task>(_entities[1].properties[3]);

  /// see [Task.isFavorite]
  static final isFavorite =
      QueryBooleanProperty<Task>(_entities[1].properties[4]);

  /// see [Task.date]
  static final date = QueryStringProperty<Task>(_entities[1].properties[5]);

  /// see [Task.priority]
  static final priority =
      QueryIntegerProperty<Task>(_entities[1].properties[6]);

  /// see [Task.color]
  static final color = QueryIntegerProperty<Task>(_entities[1].properties[7]);

  /// see [Task.category]
  static final category =
      QueryRelationToOne<Task, Category>(_entities[1].properties[8]);
}
