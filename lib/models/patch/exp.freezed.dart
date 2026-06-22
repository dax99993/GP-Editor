// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Exp {

 ExpId get id; ExpParamId get paramId; ExpModule get module; int get moduleParamId; double get moduleParamMinValue; double get moduleParamMaxValue;
/// Create a copy of Exp
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpCopyWith<Exp> get copyWith => _$ExpCopyWithImpl<Exp>(this as Exp, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Exp&&(identical(other.id, id) || other.id == id)&&(identical(other.paramId, paramId) || other.paramId == paramId)&&(identical(other.module, module) || other.module == module)&&(identical(other.moduleParamId, moduleParamId) || other.moduleParamId == moduleParamId)&&(identical(other.moduleParamMinValue, moduleParamMinValue) || other.moduleParamMinValue == moduleParamMinValue)&&(identical(other.moduleParamMaxValue, moduleParamMaxValue) || other.moduleParamMaxValue == moduleParamMaxValue));
}


@override
int get hashCode => Object.hash(runtimeType,id,paramId,module,moduleParamId,moduleParamMinValue,moduleParamMaxValue);

@override
String toString() {
  return 'Exp(id: $id, paramId: $paramId, module: $module, moduleParamId: $moduleParamId, moduleParamMinValue: $moduleParamMinValue, moduleParamMaxValue: $moduleParamMaxValue)';
}


}

/// @nodoc
abstract mixin class $ExpCopyWith<$Res>  {
  factory $ExpCopyWith(Exp value, $Res Function(Exp) _then) = _$ExpCopyWithImpl;
@useResult
$Res call({
 ExpId id, ExpParamId paramId, ExpModule module, int moduleParamId, double moduleParamMinValue, double moduleParamMaxValue
});




}
/// @nodoc
class _$ExpCopyWithImpl<$Res>
    implements $ExpCopyWith<$Res> {
  _$ExpCopyWithImpl(this._self, this._then);

  final Exp _self;
  final $Res Function(Exp) _then;

/// Create a copy of Exp
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? paramId = null,Object? module = null,Object? moduleParamId = null,Object? moduleParamMinValue = null,Object? moduleParamMaxValue = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as ExpId,paramId: null == paramId ? _self.paramId : paramId // ignore: cast_nullable_to_non_nullable
as ExpParamId,module: null == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as ExpModule,moduleParamId: null == moduleParamId ? _self.moduleParamId : moduleParamId // ignore: cast_nullable_to_non_nullable
as int,moduleParamMinValue: null == moduleParamMinValue ? _self.moduleParamMinValue : moduleParamMinValue // ignore: cast_nullable_to_non_nullable
as double,moduleParamMaxValue: null == moduleParamMaxValue ? _self.moduleParamMaxValue : moduleParamMaxValue // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Exp].
extension ExpPatterns on Exp {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Exp value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Exp() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Exp value)  $default,){
final _that = this;
switch (_that) {
case _Exp():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Exp value)?  $default,){
final _that = this;
switch (_that) {
case _Exp() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ExpId id,  ExpParamId paramId,  ExpModule module,  int moduleParamId,  double moduleParamMinValue,  double moduleParamMaxValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Exp() when $default != null:
return $default(_that.id,_that.paramId,_that.module,_that.moduleParamId,_that.moduleParamMinValue,_that.moduleParamMaxValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ExpId id,  ExpParamId paramId,  ExpModule module,  int moduleParamId,  double moduleParamMinValue,  double moduleParamMaxValue)  $default,) {final _that = this;
switch (_that) {
case _Exp():
return $default(_that.id,_that.paramId,_that.module,_that.moduleParamId,_that.moduleParamMinValue,_that.moduleParamMaxValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ExpId id,  ExpParamId paramId,  ExpModule module,  int moduleParamId,  double moduleParamMinValue,  double moduleParamMaxValue)?  $default,) {final _that = this;
switch (_that) {
case _Exp() when $default != null:
return $default(_that.id,_that.paramId,_that.module,_that.moduleParamId,_that.moduleParamMinValue,_that.moduleParamMaxValue);case _:
  return null;

}
}

}

/// @nodoc


class _Exp implements Exp {
  const _Exp({required this.id, required this.paramId, required this.module, required this.moduleParamId, required this.moduleParamMinValue, required this.moduleParamMaxValue});
  

@override final  ExpId id;
@override final  ExpParamId paramId;
@override final  ExpModule module;
@override final  int moduleParamId;
@override final  double moduleParamMinValue;
@override final  double moduleParamMaxValue;

/// Create a copy of Exp
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpCopyWith<_Exp> get copyWith => __$ExpCopyWithImpl<_Exp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Exp&&(identical(other.id, id) || other.id == id)&&(identical(other.paramId, paramId) || other.paramId == paramId)&&(identical(other.module, module) || other.module == module)&&(identical(other.moduleParamId, moduleParamId) || other.moduleParamId == moduleParamId)&&(identical(other.moduleParamMinValue, moduleParamMinValue) || other.moduleParamMinValue == moduleParamMinValue)&&(identical(other.moduleParamMaxValue, moduleParamMaxValue) || other.moduleParamMaxValue == moduleParamMaxValue));
}


@override
int get hashCode => Object.hash(runtimeType,id,paramId,module,moduleParamId,moduleParamMinValue,moduleParamMaxValue);

@override
String toString() {
  return 'Exp(id: $id, paramId: $paramId, module: $module, moduleParamId: $moduleParamId, moduleParamMinValue: $moduleParamMinValue, moduleParamMaxValue: $moduleParamMaxValue)';
}


}

/// @nodoc
abstract mixin class _$ExpCopyWith<$Res> implements $ExpCopyWith<$Res> {
  factory _$ExpCopyWith(_Exp value, $Res Function(_Exp) _then) = __$ExpCopyWithImpl;
@override @useResult
$Res call({
 ExpId id, ExpParamId paramId, ExpModule module, int moduleParamId, double moduleParamMinValue, double moduleParamMaxValue
});




}
/// @nodoc
class __$ExpCopyWithImpl<$Res>
    implements _$ExpCopyWith<$Res> {
  __$ExpCopyWithImpl(this._self, this._then);

  final _Exp _self;
  final $Res Function(_Exp) _then;

/// Create a copy of Exp
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? paramId = null,Object? module = null,Object? moduleParamId = null,Object? moduleParamMinValue = null,Object? moduleParamMaxValue = null,}) {
  return _then(_Exp(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as ExpId,paramId: null == paramId ? _self.paramId : paramId // ignore: cast_nullable_to_non_nullable
as ExpParamId,module: null == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as ExpModule,moduleParamId: null == moduleParamId ? _self.moduleParamId : moduleParamId // ignore: cast_nullable_to_non_nullable
as int,moduleParamMinValue: null == moduleParamMinValue ? _self.moduleParamMinValue : moduleParamMinValue // ignore: cast_nullable_to_non_nullable
as double,moduleParamMaxValue: null == moduleParamMaxValue ? _self.moduleParamMaxValue : moduleParamMaxValue // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
