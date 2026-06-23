// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Effect {

 String get name; int get id; EffectType get type; List<Parameter> get parameters; bool get state; int? get cabCode;
/// Create a copy of Effect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EffectCopyWith<Effect> get copyWith => _$EffectCopyWithImpl<Effect>(this as Effect, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Effect&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.parameters, parameters)&&(identical(other.state, state) || other.state == state)&&(identical(other.cabCode, cabCode) || other.cabCode == cabCode));
}


@override
int get hashCode => Object.hash(runtimeType,name,id,type,const DeepCollectionEquality().hash(parameters),state,cabCode);

@override
String toString() {
  return 'Effect(name: $name, id: $id, type: $type, parameters: $parameters, state: $state, cabCode: $cabCode)';
}


}

/// @nodoc
abstract mixin class $EffectCopyWith<$Res>  {
  factory $EffectCopyWith(Effect value, $Res Function(Effect) _then) = _$EffectCopyWithImpl;
@useResult
$Res call({
 String name, int id, EffectType type, List<Parameter> parameters, bool state, int? cabCode
});




}
/// @nodoc
class _$EffectCopyWithImpl<$Res>
    implements $EffectCopyWith<$Res> {
  _$EffectCopyWithImpl(this._self, this._then);

  final Effect _self;
  final $Res Function(Effect) _then;

/// Create a copy of Effect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? id = null,Object? type = null,Object? parameters = null,Object? state = null,Object? cabCode = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as EffectType,parameters: null == parameters ? _self.parameters : parameters // ignore: cast_nullable_to_non_nullable
as List<Parameter>,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as bool,cabCode: freezed == cabCode ? _self.cabCode : cabCode // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Effect].
extension EffectPatterns on Effect {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Effect value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Effect() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Effect value)  $default,){
final _that = this;
switch (_that) {
case _Effect():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Effect value)?  $default,){
final _that = this;
switch (_that) {
case _Effect() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int id,  EffectType type,  List<Parameter> parameters,  bool state,  int? cabCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Effect() when $default != null:
return $default(_that.name,_that.id,_that.type,_that.parameters,_that.state,_that.cabCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int id,  EffectType type,  List<Parameter> parameters,  bool state,  int? cabCode)  $default,) {final _that = this;
switch (_that) {
case _Effect():
return $default(_that.name,_that.id,_that.type,_that.parameters,_that.state,_that.cabCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int id,  EffectType type,  List<Parameter> parameters,  bool state,  int? cabCode)?  $default,) {final _that = this;
switch (_that) {
case _Effect() when $default != null:
return $default(_that.name,_that.id,_that.type,_that.parameters,_that.state,_that.cabCode);case _:
  return null;

}
}

}

/// @nodoc


class _Effect implements Effect {
  const _Effect({required this.name, required this.id, required this.type, required final  List<Parameter> parameters, this.state = false, this.cabCode}): _parameters = parameters;
  

@override final  String name;
@override final  int id;
@override final  EffectType type;
 final  List<Parameter> _parameters;
@override List<Parameter> get parameters {
  if (_parameters is EqualUnmodifiableListView) return _parameters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_parameters);
}

@override@JsonKey() final  bool state;
@override final  int? cabCode;

/// Create a copy of Effect
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EffectCopyWith<_Effect> get copyWith => __$EffectCopyWithImpl<_Effect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Effect&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._parameters, _parameters)&&(identical(other.state, state) || other.state == state)&&(identical(other.cabCode, cabCode) || other.cabCode == cabCode));
}


@override
int get hashCode => Object.hash(runtimeType,name,id,type,const DeepCollectionEquality().hash(_parameters),state,cabCode);

@override
String toString() {
  return 'Effect(name: $name, id: $id, type: $type, parameters: $parameters, state: $state, cabCode: $cabCode)';
}


}

/// @nodoc
abstract mixin class _$EffectCopyWith<$Res> implements $EffectCopyWith<$Res> {
  factory _$EffectCopyWith(_Effect value, $Res Function(_Effect) _then) = __$EffectCopyWithImpl;
@override @useResult
$Res call({
 String name, int id, EffectType type, List<Parameter> parameters, bool state, int? cabCode
});




}
/// @nodoc
class __$EffectCopyWithImpl<$Res>
    implements _$EffectCopyWith<$Res> {
  __$EffectCopyWithImpl(this._self, this._then);

  final _Effect _self;
  final $Res Function(_Effect) _then;

/// Create a copy of Effect
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? id = null,Object? type = null,Object? parameters = null,Object? state = null,Object? cabCode = freezed,}) {
  return _then(_Effect(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as EffectType,parameters: null == parameters ? _self._parameters : parameters // ignore: cast_nullable_to_non_nullable
as List<Parameter>,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as bool,cabCode: freezed == cabCode ? _self.cabCode : cabCode // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
