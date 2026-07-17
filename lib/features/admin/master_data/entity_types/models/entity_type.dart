class EntityType {
  final String id;
  final String name;
  final String icon;
  final String color;
  final int defaultFollowUpDays;
  final String description;
  final bool isActive;
  final int sortOrder;
  final DateTime createdAt;
  final DateTime updatedAt;

  const EntityType({
    required this.id,
    required this.name,
    required this.icon,
    required this.color,
    required this.defaultFollowUpDays,
    required this.description,
    required this.isActive,
    required this.sortOrder,
    required this.createdAt,
    required this.updatedAt,
  });

  EntityType copyWith({
    String? id,
    String? name,
    String? icon,
    String? color,
    int? defaultFollowUpDays,
    String? description,
    bool? isActive,
    int? sortOrder,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return EntityType(
      id: id ?? this.id,
      name: name ?? this.name,
      icon: icon ?? this.icon,
      color: color ?? this.color,
      defaultFollowUpDays:
      defaultFollowUpDays ?? this.defaultFollowUpDays,
      description: description ?? this.description,
      isActive: isActive ?? this.isActive,
      sortOrder: sortOrder ?? this.sortOrder,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'icon': icon,
      'color': color,
      'defaultFollowUpDays': defaultFollowUpDays,
      'description': description,
      'isActive': isActive,
      'sortOrder': sortOrder,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  factory EntityType.fromMap(Map<String, dynamic> map) {
    return EntityType(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      icon: map['icon'] ?? '',
      color: map['color'] ?? '',
      defaultFollowUpDays: map['defaultFollowUpDays'] ?? 0,
      description: map['description'] ?? '',
      isActive: map['isActive'] ?? true,
      sortOrder: map['sortOrder'] ?? 0,
      createdAt: DateTime.tryParse(map['createdAt'] ?? '') ??
          DateTime.now(),
      updatedAt: DateTime.tryParse(map['updatedAt'] ?? '') ??
          DateTime.now(),
    );
  }

  @override
  String toString() {
    return 'EntityType(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is EntityType &&
            runtimeType == other.runtimeType &&
            id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}