// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'knob.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Knob {

 int get id; KnobModule get module; int get moduleParamId;
/// Create a copy of Knob
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KnobCopyWith<Knob> get copyWith => _$KnobCopyWithImpl<Knob>(this as Knob, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Knob&&(identical(other.id, id) || other.id == id)&&(identical(other.module, module) || other.module == module)&&(identical(other.moduleParamId, moduleParamId) || other.moduleParamId == moduleParamId));
}


@override
int get hashCode => Object.hash(runtimeType,id,module,moduleParamId);

@override
String toString() {
  return 'Knob(id: $id, module: $module, moduleParamId: $moduleParamId)';
}


}

/// @nodoc
abstract mixin class $KnobCopyWith<$Res>  {
  factory $KnobCopyWith(Knob value, $Res Function(Knob) _then) = _$KnobCopyWithImpl;
@useResult
$Res call({
 int id, KnobModule module, int moduleParamId
});




}
/// @nodoc
class _$KnobCopyWithImpl<$Res>
    implements $KnobCopyWith<$Res> {
  _$KnobCopyWithImpl(this._self, this._then);

  final Knob _self;
  final $Res Function(Knob) _then;

/// Create a copy of Knob
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? module = null,Object? moduleParamId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,module: null == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as KnobModule,moduleParamId: null == moduleParamId ? _self.moduleParamId : moduleParamId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Knob].
extension KnobPatterns on Knob {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Knob value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Knob() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Knob value)  $default,){
final _that = this;
switch (_that) {
case _Knob():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Knob value)?  $default,){
final _that = this;
switch (_that) {
case _Knob() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  KnobModule module,  int moduleParamId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Knob() when $default != null:
return $default(_that.id,_that.module,_that.moduleParamId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  KnobModule module,  int moduleParamId)  $default,) {final _that = this;
switch (_that) {
case _Knob():
return $default(_that.id,_that.module,_that.moduleParamId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  KnobModule module,  int moduleParamId)?  $default,) {final _that = this;
switch (_that) {
case _Knob() when $default != null:
return $default(_that.id,_that.module,_that.moduleParamId);case _:
  return null;

}
}

}

/// @nodoc


class _Knob implements Knob {
  const _Knob({required this.id, required this.module, required this.moduleParamId});
  

@override final  int id;
@override final  KnobModule module;
@override final  int moduleParamId;

/// Create a copy of Knob
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KnobCopyWith<_Knob> get copyWith => __$KnobCopyWithImpl<_Knob>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Knob&&(identical(other.id, id) || other.id == id)&&(identical(other.module, module) || other.module == module)&&(identical(other.moduleParamId, moduleParamId) || other.moduleParamId == moduleParamId));
}


@override
int get hashCode => Object.hash(runtimeType,id,module,moduleParamId);

@override
String toString() {
  return 'Knob(id: $id, module: $module, moduleParamId: $moduleParamId)';
}


}

/// @nodoc
abstract mixin class _$KnobCopyWith<$Res> implements $KnobCopyWith<$Res> {
  factory _$KnobCopyWith(_Knob value, $Res Function(_Knob) _then) = __$KnobCopyWithImpl;
@override @useResult
$Res call({
 int id, KnobModule module, int moduleParamId
});




}
/// @nodoc
class __$KnobCopyWithImpl<$Res>
    implements _$KnobCopyWith<$Res> {
  __$KnobCopyWithImpl(this._self, this._then);

  final _Knob _self;
  final $Res Function(_Knob) _then;

/// Create a copy of Knob
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? module = null,Object? moduleParamId = null,}) {
  return _then(_Knob(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,module: null == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as KnobModule,moduleParamId: null == moduleParamId ? _self.moduleParamId : moduleParamId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
