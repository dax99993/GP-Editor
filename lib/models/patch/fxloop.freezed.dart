// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fxloop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FXLoop {

 double get sendLevel; double get returnLevel; int get sendPosition; int get returnPosition; FXLoopMode get mode;
/// Create a copy of FXLoop
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FXLoopCopyWith<FXLoop> get copyWith => _$FXLoopCopyWithImpl<FXLoop>(this as FXLoop, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FXLoop&&(identical(other.sendLevel, sendLevel) || other.sendLevel == sendLevel)&&(identical(other.returnLevel, returnLevel) || other.returnLevel == returnLevel)&&(identical(other.sendPosition, sendPosition) || other.sendPosition == sendPosition)&&(identical(other.returnPosition, returnPosition) || other.returnPosition == returnPosition)&&(identical(other.mode, mode) || other.mode == mode));
}


@override
int get hashCode => Object.hash(runtimeType,sendLevel,returnLevel,sendPosition,returnPosition,mode);

@override
String toString() {
  return 'FXLoop(sendLevel: $sendLevel, returnLevel: $returnLevel, sendPosition: $sendPosition, returnPosition: $returnPosition, mode: $mode)';
}


}

/// @nodoc
abstract mixin class $FXLoopCopyWith<$Res>  {
  factory $FXLoopCopyWith(FXLoop value, $Res Function(FXLoop) _then) = _$FXLoopCopyWithImpl;
@useResult
$Res call({
 double sendLevel, double returnLevel, int sendPosition, int returnPosition, FXLoopMode mode
});




}
/// @nodoc
class _$FXLoopCopyWithImpl<$Res>
    implements $FXLoopCopyWith<$Res> {
  _$FXLoopCopyWithImpl(this._self, this._then);

  final FXLoop _self;
  final $Res Function(FXLoop) _then;

/// Create a copy of FXLoop
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sendLevel = null,Object? returnLevel = null,Object? sendPosition = null,Object? returnPosition = null,Object? mode = null,}) {
  return _then(_self.copyWith(
sendLevel: null == sendLevel ? _self.sendLevel : sendLevel // ignore: cast_nullable_to_non_nullable
as double,returnLevel: null == returnLevel ? _self.returnLevel : returnLevel // ignore: cast_nullable_to_non_nullable
as double,sendPosition: null == sendPosition ? _self.sendPosition : sendPosition // ignore: cast_nullable_to_non_nullable
as int,returnPosition: null == returnPosition ? _self.returnPosition : returnPosition // ignore: cast_nullable_to_non_nullable
as int,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as FXLoopMode,
  ));
}

}


/// Adds pattern-matching-related methods to [FXLoop].
extension FXLoopPatterns on FXLoop {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FXLoop value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FXLoop() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FXLoop value)  $default,){
final _that = this;
switch (_that) {
case _FXLoop():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FXLoop value)?  $default,){
final _that = this;
switch (_that) {
case _FXLoop() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double sendLevel,  double returnLevel,  int sendPosition,  int returnPosition,  FXLoopMode mode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FXLoop() when $default != null:
return $default(_that.sendLevel,_that.returnLevel,_that.sendPosition,_that.returnPosition,_that.mode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double sendLevel,  double returnLevel,  int sendPosition,  int returnPosition,  FXLoopMode mode)  $default,) {final _that = this;
switch (_that) {
case _FXLoop():
return $default(_that.sendLevel,_that.returnLevel,_that.sendPosition,_that.returnPosition,_that.mode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double sendLevel,  double returnLevel,  int sendPosition,  int returnPosition,  FXLoopMode mode)?  $default,) {final _that = this;
switch (_that) {
case _FXLoop() when $default != null:
return $default(_that.sendLevel,_that.returnLevel,_that.sendPosition,_that.returnPosition,_that.mode);case _:
  return null;

}
}

}

/// @nodoc


class _FXLoop implements FXLoop {
  const _FXLoop({required this.sendLevel, required this.returnLevel, required this.sendPosition, required this.returnPosition, required this.mode});
  

@override final  double sendLevel;
@override final  double returnLevel;
@override final  int sendPosition;
@override final  int returnPosition;
@override final  FXLoopMode mode;

/// Create a copy of FXLoop
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FXLoopCopyWith<_FXLoop> get copyWith => __$FXLoopCopyWithImpl<_FXLoop>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FXLoop&&(identical(other.sendLevel, sendLevel) || other.sendLevel == sendLevel)&&(identical(other.returnLevel, returnLevel) || other.returnLevel == returnLevel)&&(identical(other.sendPosition, sendPosition) || other.sendPosition == sendPosition)&&(identical(other.returnPosition, returnPosition) || other.returnPosition == returnPosition)&&(identical(other.mode, mode) || other.mode == mode));
}


@override
int get hashCode => Object.hash(runtimeType,sendLevel,returnLevel,sendPosition,returnPosition,mode);

@override
String toString() {
  return 'FXLoop(sendLevel: $sendLevel, returnLevel: $returnLevel, sendPosition: $sendPosition, returnPosition: $returnPosition, mode: $mode)';
}


}

/// @nodoc
abstract mixin class _$FXLoopCopyWith<$Res> implements $FXLoopCopyWith<$Res> {
  factory _$FXLoopCopyWith(_FXLoop value, $Res Function(_FXLoop) _then) = __$FXLoopCopyWithImpl;
@override @useResult
$Res call({
 double sendLevel, double returnLevel, int sendPosition, int returnPosition, FXLoopMode mode
});




}
/// @nodoc
class __$FXLoopCopyWithImpl<$Res>
    implements _$FXLoopCopyWith<$Res> {
  __$FXLoopCopyWithImpl(this._self, this._then);

  final _FXLoop _self;
  final $Res Function(_FXLoop) _then;

/// Create a copy of FXLoop
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sendLevel = null,Object? returnLevel = null,Object? sendPosition = null,Object? returnPosition = null,Object? mode = null,}) {
  return _then(_FXLoop(
sendLevel: null == sendLevel ? _self.sendLevel : sendLevel // ignore: cast_nullable_to_non_nullable
as double,returnLevel: null == returnLevel ? _self.returnLevel : returnLevel // ignore: cast_nullable_to_non_nullable
as double,sendPosition: null == sendPosition ? _self.sendPosition : sendPosition // ignore: cast_nullable_to_non_nullable
as int,returnPosition: null == returnPosition ? _self.returnPosition : returnPosition // ignore: cast_nullable_to_non_nullable
as int,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as FXLoopMode,
  ));
}


}

// dart format on
