// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ctrl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Ctrl {

 int get id; List<EffectType> get effects;
/// Create a copy of Ctrl
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CtrlCopyWith<Ctrl> get copyWith => _$CtrlCopyWithImpl<Ctrl>(this as Ctrl, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ctrl&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.effects, effects));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(effects));

@override
String toString() {
  return 'Ctrl(id: $id, effects: $effects)';
}


}

/// @nodoc
abstract mixin class $CtrlCopyWith<$Res>  {
  factory $CtrlCopyWith(Ctrl value, $Res Function(Ctrl) _then) = _$CtrlCopyWithImpl;
@useResult
$Res call({
 int id, List<EffectType> effects
});




}
/// @nodoc
class _$CtrlCopyWithImpl<$Res>
    implements $CtrlCopyWith<$Res> {
  _$CtrlCopyWithImpl(this._self, this._then);

  final Ctrl _self;
  final $Res Function(Ctrl) _then;

/// Create a copy of Ctrl
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? effects = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,effects: null == effects ? _self.effects : effects // ignore: cast_nullable_to_non_nullable
as List<EffectType>,
  ));
}

}


/// Adds pattern-matching-related methods to [Ctrl].
extension CtrlPatterns on Ctrl {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Ctrl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Ctrl() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Ctrl value)  $default,){
final _that = this;
switch (_that) {
case _Ctrl():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Ctrl value)?  $default,){
final _that = this;
switch (_that) {
case _Ctrl() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  List<EffectType> effects)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Ctrl() when $default != null:
return $default(_that.id,_that.effects);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  List<EffectType> effects)  $default,) {final _that = this;
switch (_that) {
case _Ctrl():
return $default(_that.id,_that.effects);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  List<EffectType> effects)?  $default,) {final _that = this;
switch (_that) {
case _Ctrl() when $default != null:
return $default(_that.id,_that.effects);case _:
  return null;

}
}

}

/// @nodoc


class _Ctrl implements Ctrl {
  const _Ctrl({required this.id, required final  List<EffectType> effects}): _effects = effects;
  

@override final  int id;
 final  List<EffectType> _effects;
@override List<EffectType> get effects {
  if (_effects is EqualUnmodifiableListView) return _effects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_effects);
}


/// Create a copy of Ctrl
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CtrlCopyWith<_Ctrl> get copyWith => __$CtrlCopyWithImpl<_Ctrl>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ctrl&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._effects, _effects));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_effects));

@override
String toString() {
  return 'Ctrl(id: $id, effects: $effects)';
}


}

/// @nodoc
abstract mixin class _$CtrlCopyWith<$Res> implements $CtrlCopyWith<$Res> {
  factory _$CtrlCopyWith(_Ctrl value, $Res Function(_Ctrl) _then) = __$CtrlCopyWithImpl;
@override @useResult
$Res call({
 int id, List<EffectType> effects
});




}
/// @nodoc
class __$CtrlCopyWithImpl<$Res>
    implements _$CtrlCopyWith<$Res> {
  __$CtrlCopyWithImpl(this._self, this._then);

  final _Ctrl _self;
  final $Res Function(_Ctrl) _then;

/// Create a copy of Ctrl
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? effects = null,}) {
  return _then(_Ctrl(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,effects: null == effects ? _self._effects : effects // ignore: cast_nullable_to_non_nullable
as List<EffectType>,
  ));
}


}

// dart format on
