import '../models/entity_type.dart';

abstract class EntityTypeRepository {
  Future<List<EntityType>> getAll();

  Future<EntityType?> getById(String id);

  Future<void> create(EntityType entityType);

  Future<void> update(EntityType entityType);

  Future<void> delete(String id);
}