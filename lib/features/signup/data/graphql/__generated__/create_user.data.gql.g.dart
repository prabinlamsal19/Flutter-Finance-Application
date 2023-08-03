// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateUserData> _$gCreateUserDataSerializer =
    new _$GCreateUserDataSerializer();
Serializer<GCreateUserData_createUser> _$gCreateUserDataCreateUserSerializer =
    new _$GCreateUserData_createUserSerializer();

class _$GCreateUserDataSerializer
    implements StructuredSerializer<GCreateUserData> {
  @override
  final Iterable<Type> types = const [GCreateUserData, _$GCreateUserData];
  @override
  final String wireName = 'GCreateUserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateUserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'createUser',
      serializers.serialize(object.createUser,
          specifiedType: const FullType(GCreateUserData_createUser)),
    ];

    return result;
  }

  @override
  GCreateUserData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateUserDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'createUser':
          result.createUser.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GCreateUserData_createUser))!
              as GCreateUserData_createUser);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateUserData_createUserSerializer
    implements StructuredSerializer<GCreateUserData_createUser> {
  @override
  final Iterable<Type> types = const [
    GCreateUserData_createUser,
    _$GCreateUserData_createUser
  ];
  @override
  final String wireName = 'GCreateUserData_createUser';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateUserData_createUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCreateUserData_createUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateUserData_createUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateUserData extends GCreateUserData {
  @override
  final String G__typename;
  @override
  final GCreateUserData_createUser createUser;

  factory _$GCreateUserData([void Function(GCreateUserDataBuilder)? updates]) =>
      (new GCreateUserDataBuilder()..update(updates))._build();

  _$GCreateUserData._({required this.G__typename, required this.createUser})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateUserData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        createUser, r'GCreateUserData', 'createUser');
  }

  @override
  GCreateUserData rebuild(void Function(GCreateUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateUserDataBuilder toBuilder() =>
      new GCreateUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateUserData &&
        G__typename == other.G__typename &&
        createUser == other.createUser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createUser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateUserData')
          ..add('G__typename', G__typename)
          ..add('createUser', createUser))
        .toString();
  }
}

class GCreateUserDataBuilder
    implements Builder<GCreateUserData, GCreateUserDataBuilder> {
  _$GCreateUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateUserData_createUserBuilder? _createUser;
  GCreateUserData_createUserBuilder get createUser =>
      _$this._createUser ??= new GCreateUserData_createUserBuilder();
  set createUser(GCreateUserData_createUserBuilder? createUser) =>
      _$this._createUser = createUser;

  GCreateUserDataBuilder() {
    GCreateUserData._initializeBuilder(this);
  }

  GCreateUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createUser = $v.createUser.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateUserData;
  }

  @override
  void update(void Function(GCreateUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateUserData build() => _build();

  _$GCreateUserData _build() {
    _$GCreateUserData _$result;
    try {
      _$result = _$v ??
          new _$GCreateUserData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCreateUserData', 'G__typename'),
              createUser: createUser.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createUser';
        createUser.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateUserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateUserData_createUser extends GCreateUserData_createUser {
  @override
  final String G__typename;
  @override
  final String username;
  @override
  final String email;

  factory _$GCreateUserData_createUser(
          [void Function(GCreateUserData_createUserBuilder)? updates]) =>
      (new GCreateUserData_createUserBuilder()..update(updates))._build();

  _$GCreateUserData_createUser._(
      {required this.G__typename, required this.username, required this.email})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateUserData_createUser', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        username, r'GCreateUserData_createUser', 'username');
    BuiltValueNullFieldError.checkNotNull(
        email, r'GCreateUserData_createUser', 'email');
  }

  @override
  GCreateUserData_createUser rebuild(
          void Function(GCreateUserData_createUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateUserData_createUserBuilder toBuilder() =>
      new GCreateUserData_createUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateUserData_createUser &&
        G__typename == other.G__typename &&
        username == other.username &&
        email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateUserData_createUser')
          ..add('G__typename', G__typename)
          ..add('username', username)
          ..add('email', email))
        .toString();
  }
}

class GCreateUserData_createUserBuilder
    implements
        Builder<GCreateUserData_createUser, GCreateUserData_createUserBuilder> {
  _$GCreateUserData_createUser? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GCreateUserData_createUserBuilder() {
    GCreateUserData_createUser._initializeBuilder(this);
  }

  GCreateUserData_createUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _username = $v.username;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateUserData_createUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateUserData_createUser;
  }

  @override
  void update(void Function(GCreateUserData_createUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateUserData_createUser build() => _build();

  _$GCreateUserData_createUser _build() {
    final _$result = _$v ??
        new _$GCreateUserData_createUser._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GCreateUserData_createUser', 'G__typename'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'GCreateUserData_createUser', 'username'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GCreateUserData_createUser', 'email'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
