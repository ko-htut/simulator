// GENERATED CODE - DO NOT MODIFY BY HAND

part of biller_category_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BillerCategoryResponse> _$billerCategoryResponseSerializer =
    new _$BillerCategoryResponseSerializer();

class _$BillerCategoryResponseSerializer
    implements StructuredSerializer<BillerCategoryResponse> {
  @override
  final Iterable<Type> types = const [
    BillerCategoryResponse,
    _$BillerCategoryResponse
  ];
  @override
  final String wireName = 'BillerCategoryResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, BillerCategoryResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'CategoryList',
      serializers.serialize(object.categoryList,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Category)])),
    ];
    Object? value;
    value = object.errorCode;
    if (value != null) {
      result
        ..add('ErrorCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('ErrorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BillerCategoryResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BillerCategoryResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ErrorCode':
          result.errorCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ErrorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CategoryList':
          result.categoryList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Category)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$BillerCategoryResponse extends BillerCategoryResponse {
  @override
  final String? errorCode;
  @override
  final String? errorMessage;
  @override
  final BuiltList<Category> categoryList;

  factory _$BillerCategoryResponse(
          [void Function(BillerCategoryResponseBuilder)? updates]) =>
      (new BillerCategoryResponseBuilder()..update(updates))._build();

  _$BillerCategoryResponse._(
      {this.errorCode, this.errorMessage, required this.categoryList})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        categoryList, r'BillerCategoryResponse', 'categoryList');
  }

  @override
  BillerCategoryResponse rebuild(
          void Function(BillerCategoryResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BillerCategoryResponseBuilder toBuilder() =>
      new BillerCategoryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BillerCategoryResponse &&
        errorCode == other.errorCode &&
        errorMessage == other.errorMessage &&
        categoryList == other.categoryList;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, errorCode.hashCode), errorMessage.hashCode),
        categoryList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BillerCategoryResponse')
          ..add('errorCode', errorCode)
          ..add('errorMessage', errorMessage)
          ..add('categoryList', categoryList))
        .toString();
  }
}

class BillerCategoryResponseBuilder
    implements Builder<BillerCategoryResponse, BillerCategoryResponseBuilder> {
  _$BillerCategoryResponse? _$v;

  String? _errorCode;
  String? get errorCode => _$this._errorCode;
  set errorCode(String? errorCode) => _$this._errorCode = errorCode;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  ListBuilder<Category>? _categoryList;
  ListBuilder<Category> get categoryList =>
      _$this._categoryList ??= new ListBuilder<Category>();
  set categoryList(ListBuilder<Category>? categoryList) =>
      _$this._categoryList = categoryList;

  BillerCategoryResponseBuilder();

  BillerCategoryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errorCode = $v.errorCode;
      _errorMessage = $v.errorMessage;
      _categoryList = $v.categoryList.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BillerCategoryResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BillerCategoryResponse;
  }

  @override
  void update(void Function(BillerCategoryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BillerCategoryResponse build() => _build();

  _$BillerCategoryResponse _build() {
    _$BillerCategoryResponse _$result;
    try {
      _$result = _$v ??
          new _$BillerCategoryResponse._(
              errorCode: errorCode,
              errorMessage: errorMessage,
              categoryList: categoryList.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categoryList';
        categoryList.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BillerCategoryResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
