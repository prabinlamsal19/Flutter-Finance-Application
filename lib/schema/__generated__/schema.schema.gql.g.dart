// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLoginInput> _$gLoginInputSerializer = new _$GLoginInputSerializer();
Serializer<GCreateUserInput> _$gCreateUserInputSerializer =
    new _$GCreateUserInputSerializer();
Serializer<GCreatePostInput> _$gCreatePostInputSerializer =
    new _$GCreatePostInputSerializer();
Serializer<GUpdatePostInput> _$gUpdatePostInputSerializer =
    new _$GUpdatePostInputSerializer();
Serializer<GCreateCommentInput> _$gCreateCommentInputSerializer =
    new _$GCreateCommentInputSerializer();

class _$GLoginInputSerializer implements StructuredSerializer<GLoginInput> {
  @override
  final Iterable<Type> types = const [GLoginInput, _$GLoginInput];
  @override
  final String wireName = 'GLoginInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLoginInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLoginInput deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoginInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateUserInputSerializer
    implements StructuredSerializer<GCreateUserInput> {
  @override
  final Iterable<Type> types = const [GCreateUserInput, _$GCreateUserInput];
  @override
  final String wireName = 'GCreateUserInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateUserInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCreateUserInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateUserInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreatePostInputSerializer
    implements StructuredSerializer<GCreatePostInput> {
  @override
  final Iterable<Type> types = const [GCreatePostInput, _$GCreatePostInput];
  @override
  final String wireName = 'GCreatePostInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreatePostInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'postTitle',
      serializers.serialize(object.postTitle,
          specifiedType: const FullType(String)),
      'postDescription',
      serializers.serialize(object.postDescription,
          specifiedType: const FullType(String)),
      'isPublic',
      serializers.serialize(object.isPublic,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GCreatePostInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreatePostInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'postTitle':
          result.postTitle = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'postDescription':
          result.postDescription = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'isPublic':
          result.isPublic = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdatePostInputSerializer
    implements StructuredSerializer<GUpdatePostInput> {
  @override
  final Iterable<Type> types = const [GUpdatePostInput, _$GUpdatePostInput];
  @override
  final String wireName = 'GUpdatePostInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdatePostInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.postTitle;
    if (value != null) {
      result
        ..add('postTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postDescription;
    if (value != null) {
      result
        ..add('postDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isPublic;
    if (value != null) {
      result
        ..add('isPublic')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GUpdatePostInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdatePostInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'postTitle':
          result.postTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'postDescription':
          result.postDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isPublic':
          result.isPublic = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateCommentInputSerializer
    implements StructuredSerializer<GCreateCommentInput> {
  @override
  final Iterable<Type> types = const [
    GCreateCommentInput,
    _$GCreateCommentInput
  ];
  @override
  final String wireName = 'GCreateCommentInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateCommentInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'comment',
      serializers.serialize(object.comment,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCreateCommentInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateCommentInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginInput extends GLoginInput {
  @override
  final String email;
  @override
  final String password;

  factory _$GLoginInput([void Function(GLoginInputBuilder)? updates]) =>
      (new GLoginInputBuilder()..update(updates))._build();

  _$GLoginInput._({required this.email, required this.password}) : super._() {
    BuiltValueNullFieldError.checkNotNull(email, r'GLoginInput', 'email');
    BuiltValueNullFieldError.checkNotNull(password, r'GLoginInput', 'password');
  }

  @override
  GLoginInput rebuild(void Function(GLoginInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginInputBuilder toBuilder() => new GLoginInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginInput &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLoginInput')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class GLoginInputBuilder implements Builder<GLoginInput, GLoginInputBuilder> {
  _$GLoginInput? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  GLoginInputBuilder();

  GLoginInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoginInput;
  }

  @override
  void update(void Function(GLoginInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLoginInput build() => _build();

  _$GLoginInput _build() {
    final _$result = _$v ??
        new _$GLoginInput._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GLoginInput', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'GLoginInput', 'password'));
    replace(_$result);
    return _$result;
  }
}

class _$GCreateUserInput extends GCreateUserInput {
  @override
  final String username;
  @override
  final String email;
  @override
  final String password;

  factory _$GCreateUserInput(
          [void Function(GCreateUserInputBuilder)? updates]) =>
      (new GCreateUserInputBuilder()..update(updates))._build();

  _$GCreateUserInput._(
      {required this.username, required this.email, required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        username, r'GCreateUserInput', 'username');
    BuiltValueNullFieldError.checkNotNull(email, r'GCreateUserInput', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, r'GCreateUserInput', 'password');
  }

  @override
  GCreateUserInput rebuild(void Function(GCreateUserInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateUserInputBuilder toBuilder() =>
      new GCreateUserInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateUserInput &&
        username == other.username &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateUserInput')
          ..add('username', username)
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class GCreateUserInputBuilder
    implements Builder<GCreateUserInput, GCreateUserInputBuilder> {
  _$GCreateUserInput? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  GCreateUserInputBuilder();

  GCreateUserInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateUserInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateUserInput;
  }

  @override
  void update(void Function(GCreateUserInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateUserInput build() => _build();

  _$GCreateUserInput _build() {
    final _$result = _$v ??
        new _$GCreateUserInput._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'GCreateUserInput', 'username'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GCreateUserInput', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'GCreateUserInput', 'password'));
    replace(_$result);
    return _$result;
  }
}

class _$GCreatePostInput extends GCreatePostInput {
  @override
  final String postTitle;
  @override
  final String postDescription;
  @override
  final bool isPublic;

  factory _$GCreatePostInput(
          [void Function(GCreatePostInputBuilder)? updates]) =>
      (new GCreatePostInputBuilder()..update(updates))._build();

  _$GCreatePostInput._(
      {required this.postTitle,
      required this.postDescription,
      required this.isPublic})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        postTitle, r'GCreatePostInput', 'postTitle');
    BuiltValueNullFieldError.checkNotNull(
        postDescription, r'GCreatePostInput', 'postDescription');
    BuiltValueNullFieldError.checkNotNull(
        isPublic, r'GCreatePostInput', 'isPublic');
  }

  @override
  GCreatePostInput rebuild(void Function(GCreatePostInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePostInputBuilder toBuilder() =>
      new GCreatePostInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreatePostInput &&
        postTitle == other.postTitle &&
        postDescription == other.postDescription &&
        isPublic == other.isPublic;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postTitle.hashCode);
    _$hash = $jc(_$hash, postDescription.hashCode);
    _$hash = $jc(_$hash, isPublic.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreatePostInput')
          ..add('postTitle', postTitle)
          ..add('postDescription', postDescription)
          ..add('isPublic', isPublic))
        .toString();
  }
}

class GCreatePostInputBuilder
    implements Builder<GCreatePostInput, GCreatePostInputBuilder> {
  _$GCreatePostInput? _$v;

  String? _postTitle;
  String? get postTitle => _$this._postTitle;
  set postTitle(String? postTitle) => _$this._postTitle = postTitle;

  String? _postDescription;
  String? get postDescription => _$this._postDescription;
  set postDescription(String? postDescription) =>
      _$this._postDescription = postDescription;

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  GCreatePostInputBuilder();

  GCreatePostInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postTitle = $v.postTitle;
      _postDescription = $v.postDescription;
      _isPublic = $v.isPublic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreatePostInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePostInput;
  }

  @override
  void update(void Function(GCreatePostInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreatePostInput build() => _build();

  _$GCreatePostInput _build() {
    final _$result = _$v ??
        new _$GCreatePostInput._(
            postTitle: BuiltValueNullFieldError.checkNotNull(
                postTitle, r'GCreatePostInput', 'postTitle'),
            postDescription: BuiltValueNullFieldError.checkNotNull(
                postDescription, r'GCreatePostInput', 'postDescription'),
            isPublic: BuiltValueNullFieldError.checkNotNull(
                isPublic, r'GCreatePostInput', 'isPublic'));
    replace(_$result);
    return _$result;
  }
}

class _$GUpdatePostInput extends GUpdatePostInput {
  @override
  final String? postTitle;
  @override
  final String? postDescription;
  @override
  final bool? isPublic;
  @override
  final String id;

  factory _$GUpdatePostInput(
          [void Function(GUpdatePostInputBuilder)? updates]) =>
      (new GUpdatePostInputBuilder()..update(updates))._build();

  _$GUpdatePostInput._(
      {this.postTitle, this.postDescription, this.isPublic, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GUpdatePostInput', 'id');
  }

  @override
  GUpdatePostInput rebuild(void Function(GUpdatePostInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdatePostInputBuilder toBuilder() =>
      new GUpdatePostInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdatePostInput &&
        postTitle == other.postTitle &&
        postDescription == other.postDescription &&
        isPublic == other.isPublic &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postTitle.hashCode);
    _$hash = $jc(_$hash, postDescription.hashCode);
    _$hash = $jc(_$hash, isPublic.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdatePostInput')
          ..add('postTitle', postTitle)
          ..add('postDescription', postDescription)
          ..add('isPublic', isPublic)
          ..add('id', id))
        .toString();
  }
}

class GUpdatePostInputBuilder
    implements Builder<GUpdatePostInput, GUpdatePostInputBuilder> {
  _$GUpdatePostInput? _$v;

  String? _postTitle;
  String? get postTitle => _$this._postTitle;
  set postTitle(String? postTitle) => _$this._postTitle = postTitle;

  String? _postDescription;
  String? get postDescription => _$this._postDescription;
  set postDescription(String? postDescription) =>
      _$this._postDescription = postDescription;

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GUpdatePostInputBuilder();

  GUpdatePostInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postTitle = $v.postTitle;
      _postDescription = $v.postDescription;
      _isPublic = $v.isPublic;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdatePostInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdatePostInput;
  }

  @override
  void update(void Function(GUpdatePostInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdatePostInput build() => _build();

  _$GUpdatePostInput _build() {
    final _$result = _$v ??
        new _$GUpdatePostInput._(
            postTitle: postTitle,
            postDescription: postDescription,
            isPublic: isPublic,
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GUpdatePostInput', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GCreateCommentInput extends GCreateCommentInput {
  @override
  final String id;
  @override
  final String comment;

  factory _$GCreateCommentInput(
          [void Function(GCreateCommentInputBuilder)? updates]) =>
      (new GCreateCommentInputBuilder()..update(updates))._build();

  _$GCreateCommentInput._({required this.id, required this.comment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GCreateCommentInput', 'id');
    BuiltValueNullFieldError.checkNotNull(
        comment, r'GCreateCommentInput', 'comment');
  }

  @override
  GCreateCommentInput rebuild(
          void Function(GCreateCommentInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateCommentInputBuilder toBuilder() =>
      new GCreateCommentInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateCommentInput &&
        id == other.id &&
        comment == other.comment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateCommentInput')
          ..add('id', id)
          ..add('comment', comment))
        .toString();
  }
}

class GCreateCommentInputBuilder
    implements Builder<GCreateCommentInput, GCreateCommentInputBuilder> {
  _$GCreateCommentInput? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  GCreateCommentInputBuilder();

  GCreateCommentInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _comment = $v.comment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateCommentInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateCommentInput;
  }

  @override
  void update(void Function(GCreateCommentInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateCommentInput build() => _build();

  _$GCreateCommentInput _build() {
    final _$result = _$v ??
        new _$GCreateCommentInput._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GCreateCommentInput', 'id'),
            comment: BuiltValueNullFieldError.checkNotNull(
                comment, r'GCreateCommentInput', 'comment'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
