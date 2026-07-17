import 'package:flutter/material.dart';

import '../models/entity_type.dart';
import '../repositories/entity_type_repository.dart';

class EntityTypeProvider extends ChangeNotifier {
  final EntityTypeRepository repository;

  EntityTypeProvider({
    required this.repository,
  });

  final List<EntityType> _entityTypes = [];

  bool _isLoading = false;

  String? _error;

  List<EntityType> get entityTypes =>
      List.unmodifiable(_entityTypes);

  bool get isLoading => _isLoading;

  String? get error => _error;

  Future<void> loadEntityTypes() async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      final data = await repository.getAll();

      _entityTypes
        ..clear()
        ..addAll(data);
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> addEntityType(EntityType entityType) async {
    await repository.create(entityType);
    await loadEntityTypes();
  }

  Future<void> updateEntityType(EntityType entityType) async {
    await repository.update(entityType);
    await loadEntityTypes();
  }

  Future<void> deleteEntityType(String id) async {
    await repository.delete(id);
    await loadEntityTypes();
  }
}