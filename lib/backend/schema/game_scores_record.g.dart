// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_scores_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GameScoresRecord> _$gameScoresRecordSerializer =
    new _$GameScoresRecordSerializer();

class _$GameScoresRecordSerializer
    implements StructuredSerializer<GameScoresRecord> {
  @override
  final Iterable<Type> types = const [GameScoresRecord, _$GameScoresRecord];
  @override
  final String wireName = 'GameScoresRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, GameScoresRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.game;
    if (value != null) {
      result
        ..add('game')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.score;
    if (value != null) {
      result
        ..add('score')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  GameScoresRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GameScoresRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'game':
          result.game = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$GameScoresRecord extends GameScoresRecord {
  @override
  final DocumentReference<Object?>? user;
  @override
  final DocumentReference<Object?>? game;
  @override
  final int? score;
  @override
  final DocumentReference<Object?>? reference;

  factory _$GameScoresRecord(
          [void Function(GameScoresRecordBuilder)? updates]) =>
      (new GameScoresRecordBuilder()..update(updates))._build();

  _$GameScoresRecord._({this.user, this.game, this.score, this.reference})
      : super._();

  @override
  GameScoresRecord rebuild(void Function(GameScoresRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GameScoresRecordBuilder toBuilder() =>
      new GameScoresRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GameScoresRecord &&
        user == other.user &&
        game == other.game &&
        score == other.score &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, game.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, reference.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GameScoresRecord')
          ..add('user', user)
          ..add('game', game)
          ..add('score', score)
          ..add('reference', reference))
        .toString();
  }
}

class GameScoresRecordBuilder
    implements Builder<GameScoresRecord, GameScoresRecordBuilder> {
  _$GameScoresRecord? _$v;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  DocumentReference<Object?>? _game;
  DocumentReference<Object?>? get game => _$this._game;
  set game(DocumentReference<Object?>? game) => _$this._game = game;

  int? _score;
  int? get score => _$this._score;
  set score(int? score) => _$this._score = score;

  DocumentReference<Object?>? _reference;
  DocumentReference<Object?>? get reference => _$this._reference;
  set reference(DocumentReference<Object?>? reference) =>
      _$this._reference = reference;

  GameScoresRecordBuilder() {
    GameScoresRecord._initializeBuilder(this);
  }

  GameScoresRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _game = $v.game;
      _score = $v.score;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GameScoresRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GameScoresRecord;
  }

  @override
  void update(void Function(GameScoresRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GameScoresRecord build() => _build();

  _$GameScoresRecord _build() {
    final _$result = _$v ??
        new _$GameScoresRecord._(
            user: user, game: game, score: score, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
