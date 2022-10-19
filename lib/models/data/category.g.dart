// GENERATED CODE - DO NOT MODIFY BY HAND

part of category;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Category> _$categorySerializer = new _$CategorySerializer();

class _$CategorySerializer implements StructuredSerializer<Category> {
  @override
  final Iterable<Type> types = const [Category, _$Category];
  @override
  final String wireName = 'Category';

  @override
  Iterable<Object?> serialize(Serializers serializers, Category object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.categoryCode;
    if (value != null) {
      result
        ..add('CategoryCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.categoryName;
    if (value != null) {
      result
        ..add('CategoryName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Category deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'CategoryCode':
          result.categoryCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CategoryName':
          result.categoryName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Category extends Category {
  @override
  final String? categoryCode;
  @override
  final String? categoryName;

  factory _$Category([void Function(CategoryBuilder)? updates]) =>
      (new CategoryBuilder()..update(updates))._build();

  _$Category._({this.categoryCode, this.categoryName}) : super._();

  @override
  Category rebuild(void Function(CategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryBuilder toBuilder() => new CategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Category &&
        categoryCode == other.categoryCode &&
        categoryName == other.categoryName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, categoryCode.hashCode), categoryName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Category')
          ..add('categoryCode', categoryCode)
          ..add('categoryName', categoryName))
        .toString();
  }
}

class CategoryBuilder implements Builder<Category, CategoryBuilder> {
  _$Category? _$v;

  String? _categoryCode;
  String? get categoryCode => _$this._categoryCode;
  set categoryCode(String? categoryCode) => _$this._categoryCode = categoryCode;

  String? _categoryName;
  String? get categoryName => _$this._categoryName;
  set categoryName(String? categoryName) => _$this._categoryName = categoryName;

  CategoryBuilder();

  CategoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _categoryCode = $v.categoryCode;
      _categoryName = $v.categoryName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Category other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Category;
  }

  @override
  void update(void Function(CategoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Category build() => _build();

  _$Category _build() {
    final _$result = _$v ??
        new _$Category._(
            categoryCode: categoryCode, categoryName: categoryName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
