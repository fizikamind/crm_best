import '../models/entity_type.dart';
import 'entity_type_repository.dart';

class FirestoreEntityTypeRepository
    implements EntityTypeRepository {

  @override
  Future<List<EntityType>> getAll() async {
    throw UnimplementedError();
  }

  @override
  Future<EntityType?> getById(String id) async {
    throw UnimplementedError();
  }

  @override
  Future<void> create(EntityType entityType) async {
    throw UnimplementedError();
  }

  @override
  Future<void> update(EntityType entityType) async {
    throw UnimplementedError();
  }

  @override
  Future<void> delete(String id) async {
    throw UnimplementedError();
  }
}