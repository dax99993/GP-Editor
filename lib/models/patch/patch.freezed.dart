// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PatchSettings {

 int get volume; int get pan; int get bpm;
/// Create a copy of PatchSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchSettingsCopyWith<PatchSettings> get copyWith => _$PatchSettingsCopyWithImpl<PatchSettings>(this as PatchSettings, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatchSettings&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.pan, pan) || other.pan == pan)&&(identical(other.bpm, bpm) || other.bpm == bpm));
}


@override
int get hashCode => Object.hash(runtimeType,volume,pan,bpm);

@override
String toString() {
  return 'PatchSettings(volume: $volume, pan: $pan, bpm: $bpm)';
}


}

/// @nodoc
abstract mixin class $PatchSettingsCopyWith<$Res>  {
  factory $PatchSettingsCopyWith(PatchSettings value, $Res Function(PatchSettings) _then) = _$PatchSettingsCopyWithImpl;
@useResult
$Res call({
 int volume, int pan, int bpm
});




}
/// @nodoc
class _$PatchSettingsCopyWithImpl<$Res>
    implements $PatchSettingsCopyWith<$Res> {
  _$PatchSettingsCopyWithImpl(this._self, this._then);

  final PatchSettings _self;
  final $Res Function(PatchSettings) _then;

/// Create a copy of PatchSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? volume = null,Object? pan = null,Object? bpm = null,}) {
  return _then(_self.copyWith(
volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as int,pan: null == pan ? _self.pan : pan // ignore: cast_nullable_to_non_nullable
as int,bpm: null == bpm ? _self.bpm : bpm // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PatchSettings].
extension PatchSettingsPatterns on PatchSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatchSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatchSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatchSettings value)  $default,){
final _that = this;
switch (_that) {
case _PatchSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatchSettings value)?  $default,){
final _that = this;
switch (_that) {
case _PatchSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int volume,  int pan,  int bpm)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatchSettings() when $default != null:
return $default(_that.volume,_that.pan,_that.bpm);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int volume,  int pan,  int bpm)  $default,) {final _that = this;
switch (_that) {
case _PatchSettings():
return $default(_that.volume,_that.pan,_that.bpm);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int volume,  int pan,  int bpm)?  $default,) {final _that = this;
switch (_that) {
case _PatchSettings() when $default != null:
return $default(_that.volume,_that.pan,_that.bpm);case _:
  return null;

}
}

}

/// @nodoc


class _PatchSettings implements PatchSettings {
  const _PatchSettings({required this.volume, required this.pan, required this.bpm});
  

@override final  int volume;
@override final  int pan;
@override final  int bpm;

/// Create a copy of PatchSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatchSettingsCopyWith<_PatchSettings> get copyWith => __$PatchSettingsCopyWithImpl<_PatchSettings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatchSettings&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.pan, pan) || other.pan == pan)&&(identical(other.bpm, bpm) || other.bpm == bpm));
}


@override
int get hashCode => Object.hash(runtimeType,volume,pan,bpm);

@override
String toString() {
  return 'PatchSettings(volume: $volume, pan: $pan, bpm: $bpm)';
}


}

/// @nodoc
abstract mixin class _$PatchSettingsCopyWith<$Res> implements $PatchSettingsCopyWith<$Res> {
  factory _$PatchSettingsCopyWith(_PatchSettings value, $Res Function(_PatchSettings) _then) = __$PatchSettingsCopyWithImpl;
@override @useResult
$Res call({
 int volume, int pan, int bpm
});




}
/// @nodoc
class __$PatchSettingsCopyWithImpl<$Res>
    implements _$PatchSettingsCopyWith<$Res> {
  __$PatchSettingsCopyWithImpl(this._self, this._then);

  final _PatchSettings _self;
  final $Res Function(_PatchSettings) _then;

/// Create a copy of PatchSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? volume = null,Object? pan = null,Object? bpm = null,}) {
  return _then(_PatchSettings(
volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as int,pan: null == pan ? _self.pan : pan // ignore: cast_nullable_to_non_nullable
as int,bpm: null == bpm ? _self.bpm : bpm // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$Patch {

 String get name; int get index; String get author; String get note; PatchSettings get settings; FXLoop get fxLoop; Exp get exp1a; Exp get exp1b; Exp get exp2; Knob get knob1; Knob get knob2; Knob get knob3; Ctrl get ctrl1; Ctrl get ctrl2; Ctrl get ctrl3; Ctrl get ctrl4; Ctrl get ctrl5; Ctrl get ctrl6; Ctrl get ctrl7; Ctrl get ctrl8; List<int> get effectsChainOrder; List<Effect> get effects;
/// Create a copy of Patch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchCopyWith<Patch> get copyWith => _$PatchCopyWithImpl<Patch>(this as Patch, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Patch&&(identical(other.name, name) || other.name == name)&&(identical(other.index, index) || other.index == index)&&(identical(other.author, author) || other.author == author)&&(identical(other.note, note) || other.note == note)&&(identical(other.settings, settings) || other.settings == settings)&&(identical(other.fxLoop, fxLoop) || other.fxLoop == fxLoop)&&(identical(other.exp1a, exp1a) || other.exp1a == exp1a)&&(identical(other.exp1b, exp1b) || other.exp1b == exp1b)&&(identical(other.exp2, exp2) || other.exp2 == exp2)&&(identical(other.knob1, knob1) || other.knob1 == knob1)&&(identical(other.knob2, knob2) || other.knob2 == knob2)&&(identical(other.knob3, knob3) || other.knob3 == knob3)&&(identical(other.ctrl1, ctrl1) || other.ctrl1 == ctrl1)&&(identical(other.ctrl2, ctrl2) || other.ctrl2 == ctrl2)&&(identical(other.ctrl3, ctrl3) || other.ctrl3 == ctrl3)&&(identical(other.ctrl4, ctrl4) || other.ctrl4 == ctrl4)&&(identical(other.ctrl5, ctrl5) || other.ctrl5 == ctrl5)&&(identical(other.ctrl6, ctrl6) || other.ctrl6 == ctrl6)&&(identical(other.ctrl7, ctrl7) || other.ctrl7 == ctrl7)&&(identical(other.ctrl8, ctrl8) || other.ctrl8 == ctrl8)&&const DeepCollectionEquality().equals(other.effectsChainOrder, effectsChainOrder)&&const DeepCollectionEquality().equals(other.effects, effects));
}


@override
int get hashCode => Object.hashAll([runtimeType,name,index,author,note,settings,fxLoop,exp1a,exp1b,exp2,knob1,knob2,knob3,ctrl1,ctrl2,ctrl3,ctrl4,ctrl5,ctrl6,ctrl7,ctrl8,const DeepCollectionEquality().hash(effectsChainOrder),const DeepCollectionEquality().hash(effects)]);

@override
String toString() {
  return 'Patch(name: $name, index: $index, author: $author, note: $note, settings: $settings, fxLoop: $fxLoop, exp1a: $exp1a, exp1b: $exp1b, exp2: $exp2, knob1: $knob1, knob2: $knob2, knob3: $knob3, ctrl1: $ctrl1, ctrl2: $ctrl2, ctrl3: $ctrl3, ctrl4: $ctrl4, ctrl5: $ctrl5, ctrl6: $ctrl6, ctrl7: $ctrl7, ctrl8: $ctrl8, effectsChainOrder: $effectsChainOrder, effects: $effects)';
}


}

/// @nodoc
abstract mixin class $PatchCopyWith<$Res>  {
  factory $PatchCopyWith(Patch value, $Res Function(Patch) _then) = _$PatchCopyWithImpl;
@useResult
$Res call({
 String name, int index, String author, String note, PatchSettings settings, FXLoop fxLoop, Exp exp1a, Exp exp1b, Exp exp2, Knob knob1, Knob knob2, Knob knob3, Ctrl ctrl1, Ctrl ctrl2, Ctrl ctrl3, Ctrl ctrl4, Ctrl ctrl5, Ctrl ctrl6, Ctrl ctrl7, Ctrl ctrl8, List<int> effectsChainOrder, List<Effect> effects
});


$PatchSettingsCopyWith<$Res> get settings;

}
/// @nodoc
class _$PatchCopyWithImpl<$Res>
    implements $PatchCopyWith<$Res> {
  _$PatchCopyWithImpl(this._self, this._then);

  final Patch _self;
  final $Res Function(Patch) _then;

/// Create a copy of Patch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? index = null,Object? author = null,Object? note = null,Object? settings = null,Object? fxLoop = null,Object? exp1a = null,Object? exp1b = null,Object? exp2 = null,Object? knob1 = null,Object? knob2 = null,Object? knob3 = null,Object? ctrl1 = null,Object? ctrl2 = null,Object? ctrl3 = null,Object? ctrl4 = null,Object? ctrl5 = null,Object? ctrl6 = null,Object? ctrl7 = null,Object? ctrl8 = null,Object? effectsChainOrder = null,Object? effects = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as PatchSettings,fxLoop: null == fxLoop ? _self.fxLoop : fxLoop // ignore: cast_nullable_to_non_nullable
as FXLoop,exp1a: null == exp1a ? _self.exp1a : exp1a // ignore: cast_nullable_to_non_nullable
as Exp,exp1b: null == exp1b ? _self.exp1b : exp1b // ignore: cast_nullable_to_non_nullable
as Exp,exp2: null == exp2 ? _self.exp2 : exp2 // ignore: cast_nullable_to_non_nullable
as Exp,knob1: null == knob1 ? _self.knob1 : knob1 // ignore: cast_nullable_to_non_nullable
as Knob,knob2: null == knob2 ? _self.knob2 : knob2 // ignore: cast_nullable_to_non_nullable
as Knob,knob3: null == knob3 ? _self.knob3 : knob3 // ignore: cast_nullable_to_non_nullable
as Knob,ctrl1: null == ctrl1 ? _self.ctrl1 : ctrl1 // ignore: cast_nullable_to_non_nullable
as Ctrl,ctrl2: null == ctrl2 ? _self.ctrl2 : ctrl2 // ignore: cast_nullable_to_non_nullable
as Ctrl,ctrl3: null == ctrl3 ? _self.ctrl3 : ctrl3 // ignore: cast_nullable_to_non_nullable
as Ctrl,ctrl4: null == ctrl4 ? _self.ctrl4 : ctrl4 // ignore: cast_nullable_to_non_nullable
as Ctrl,ctrl5: null == ctrl5 ? _self.ctrl5 : ctrl5 // ignore: cast_nullable_to_non_nullable
as Ctrl,ctrl6: null == ctrl6 ? _self.ctrl6 : ctrl6 // ignore: cast_nullable_to_non_nullable
as Ctrl,ctrl7: null == ctrl7 ? _self.ctrl7 : ctrl7 // ignore: cast_nullable_to_non_nullable
as Ctrl,ctrl8: null == ctrl8 ? _self.ctrl8 : ctrl8 // ignore: cast_nullable_to_non_nullable
as Ctrl,effectsChainOrder: null == effectsChainOrder ? _self.effectsChainOrder : effectsChainOrder // ignore: cast_nullable_to_non_nullable
as List<int>,effects: null == effects ? _self.effects : effects // ignore: cast_nullable_to_non_nullable
as List<Effect>,
  ));
}
/// Create a copy of Patch
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatchSettingsCopyWith<$Res> get settings {
  
  return $PatchSettingsCopyWith<$Res>(_self.settings, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}


/// Adds pattern-matching-related methods to [Patch].
extension PatchPatterns on Patch {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Patch value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Patch() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Patch value)  $default,){
final _that = this;
switch (_that) {
case _Patch():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Patch value)?  $default,){
final _that = this;
switch (_that) {
case _Patch() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int index,  String author,  String note,  PatchSettings settings,  FXLoop fxLoop,  Exp exp1a,  Exp exp1b,  Exp exp2,  Knob knob1,  Knob knob2,  Knob knob3,  Ctrl ctrl1,  Ctrl ctrl2,  Ctrl ctrl3,  Ctrl ctrl4,  Ctrl ctrl5,  Ctrl ctrl6,  Ctrl ctrl7,  Ctrl ctrl8,  List<int> effectsChainOrder,  List<Effect> effects)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Patch() when $default != null:
return $default(_that.name,_that.index,_that.author,_that.note,_that.settings,_that.fxLoop,_that.exp1a,_that.exp1b,_that.exp2,_that.knob1,_that.knob2,_that.knob3,_that.ctrl1,_that.ctrl2,_that.ctrl3,_that.ctrl4,_that.ctrl5,_that.ctrl6,_that.ctrl7,_that.ctrl8,_that.effectsChainOrder,_that.effects);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int index,  String author,  String note,  PatchSettings settings,  FXLoop fxLoop,  Exp exp1a,  Exp exp1b,  Exp exp2,  Knob knob1,  Knob knob2,  Knob knob3,  Ctrl ctrl1,  Ctrl ctrl2,  Ctrl ctrl3,  Ctrl ctrl4,  Ctrl ctrl5,  Ctrl ctrl6,  Ctrl ctrl7,  Ctrl ctrl8,  List<int> effectsChainOrder,  List<Effect> effects)  $default,) {final _that = this;
switch (_that) {
case _Patch():
return $default(_that.name,_that.index,_that.author,_that.note,_that.settings,_that.fxLoop,_that.exp1a,_that.exp1b,_that.exp2,_that.knob1,_that.knob2,_that.knob3,_that.ctrl1,_that.ctrl2,_that.ctrl3,_that.ctrl4,_that.ctrl5,_that.ctrl6,_that.ctrl7,_that.ctrl8,_that.effectsChainOrder,_that.effects);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int index,  String author,  String note,  PatchSettings settings,  FXLoop fxLoop,  Exp exp1a,  Exp exp1b,  Exp exp2,  Knob knob1,  Knob knob2,  Knob knob3,  Ctrl ctrl1,  Ctrl ctrl2,  Ctrl ctrl3,  Ctrl ctrl4,  Ctrl ctrl5,  Ctrl ctrl6,  Ctrl ctrl7,  Ctrl ctrl8,  List<int> effectsChainOrder,  List<Effect> effects)?  $default,) {final _that = this;
switch (_that) {
case _Patch() when $default != null:
return $default(_that.name,_that.index,_that.author,_that.note,_that.settings,_that.fxLoop,_that.exp1a,_that.exp1b,_that.exp2,_that.knob1,_that.knob2,_that.knob3,_that.ctrl1,_that.ctrl2,_that.ctrl3,_that.ctrl4,_that.ctrl5,_that.ctrl6,_that.ctrl7,_that.ctrl8,_that.effectsChainOrder,_that.effects);case _:
  return null;

}
}

}

/// @nodoc


class _Patch implements Patch {
  const _Patch({required this.name, required this.index, required this.author, required this.note, required this.settings, required this.fxLoop, required this.exp1a, required this.exp1b, required this.exp2, required this.knob1, required this.knob2, required this.knob3, required this.ctrl1, required this.ctrl2, required this.ctrl3, required this.ctrl4, required this.ctrl5, required this.ctrl6, required this.ctrl7, required this.ctrl8, required final  List<int> effectsChainOrder, required final  List<Effect> effects}): _effectsChainOrder = effectsChainOrder,_effects = effects;
  

@override final  String name;
@override final  int index;
@override final  String author;
@override final  String note;
@override final  PatchSettings settings;
@override final  FXLoop fxLoop;
@override final  Exp exp1a;
@override final  Exp exp1b;
@override final  Exp exp2;
@override final  Knob knob1;
@override final  Knob knob2;
@override final  Knob knob3;
@override final  Ctrl ctrl1;
@override final  Ctrl ctrl2;
@override final  Ctrl ctrl3;
@override final  Ctrl ctrl4;
@override final  Ctrl ctrl5;
@override final  Ctrl ctrl6;
@override final  Ctrl ctrl7;
@override final  Ctrl ctrl8;
 final  List<int> _effectsChainOrder;
@override List<int> get effectsChainOrder {
  if (_effectsChainOrder is EqualUnmodifiableListView) return _effectsChainOrder;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_effectsChainOrder);
}

 final  List<Effect> _effects;
@override List<Effect> get effects {
  if (_effects is EqualUnmodifiableListView) return _effects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_effects);
}


/// Create a copy of Patch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatchCopyWith<_Patch> get copyWith => __$PatchCopyWithImpl<_Patch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Patch&&(identical(other.name, name) || other.name == name)&&(identical(other.index, index) || other.index == index)&&(identical(other.author, author) || other.author == author)&&(identical(other.note, note) || other.note == note)&&(identical(other.settings, settings) || other.settings == settings)&&(identical(other.fxLoop, fxLoop) || other.fxLoop == fxLoop)&&(identical(other.exp1a, exp1a) || other.exp1a == exp1a)&&(identical(other.exp1b, exp1b) || other.exp1b == exp1b)&&(identical(other.exp2, exp2) || other.exp2 == exp2)&&(identical(other.knob1, knob1) || other.knob1 == knob1)&&(identical(other.knob2, knob2) || other.knob2 == knob2)&&(identical(other.knob3, knob3) || other.knob3 == knob3)&&(identical(other.ctrl1, ctrl1) || other.ctrl1 == ctrl1)&&(identical(other.ctrl2, ctrl2) || other.ctrl2 == ctrl2)&&(identical(other.ctrl3, ctrl3) || other.ctrl3 == ctrl3)&&(identical(other.ctrl4, ctrl4) || other.ctrl4 == ctrl4)&&(identical(other.ctrl5, ctrl5) || other.ctrl5 == ctrl5)&&(identical(other.ctrl6, ctrl6) || other.ctrl6 == ctrl6)&&(identical(other.ctrl7, ctrl7) || other.ctrl7 == ctrl7)&&(identical(other.ctrl8, ctrl8) || other.ctrl8 == ctrl8)&&const DeepCollectionEquality().equals(other._effectsChainOrder, _effectsChainOrder)&&const DeepCollectionEquality().equals(other._effects, _effects));
}


@override
int get hashCode => Object.hashAll([runtimeType,name,index,author,note,settings,fxLoop,exp1a,exp1b,exp2,knob1,knob2,knob3,ctrl1,ctrl2,ctrl3,ctrl4,ctrl5,ctrl6,ctrl7,ctrl8,const DeepCollectionEquality().hash(_effectsChainOrder),const DeepCollectionEquality().hash(_effects)]);

@override
String toString() {
  return 'Patch(name: $name, index: $index, author: $author, note: $note, settings: $settings, fxLoop: $fxLoop, exp1a: $exp1a, exp1b: $exp1b, exp2: $exp2, knob1: $knob1, knob2: $knob2, knob3: $knob3, ctrl1: $ctrl1, ctrl2: $ctrl2, ctrl3: $ctrl3, ctrl4: $ctrl4, ctrl5: $ctrl5, ctrl6: $ctrl6, ctrl7: $ctrl7, ctrl8: $ctrl8, effectsChainOrder: $effectsChainOrder, effects: $effects)';
}


}

/// @nodoc
abstract mixin class _$PatchCopyWith<$Res> implements $PatchCopyWith<$Res> {
  factory _$PatchCopyWith(_Patch value, $Res Function(_Patch) _then) = __$PatchCopyWithImpl;
@override @useResult
$Res call({
 String name, int index, String author, String note, PatchSettings settings, FXLoop fxLoop, Exp exp1a, Exp exp1b, Exp exp2, Knob knob1, Knob knob2, Knob knob3, Ctrl ctrl1, Ctrl ctrl2, Ctrl ctrl3, Ctrl ctrl4, Ctrl ctrl5, Ctrl ctrl6, Ctrl ctrl7, Ctrl ctrl8, List<int> effectsChainOrder, List<Effect> effects
});


@override $PatchSettingsCopyWith<$Res> get settings;

}
/// @nodoc
class __$PatchCopyWithImpl<$Res>
    implements _$PatchCopyWith<$Res> {
  __$PatchCopyWithImpl(this._self, this._then);

  final _Patch _self;
  final $Res Function(_Patch) _then;

/// Create a copy of Patch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? index = null,Object? author = null,Object? note = null,Object? settings = null,Object? fxLoop = null,Object? exp1a = null,Object? exp1b = null,Object? exp2 = null,Object? knob1 = null,Object? knob2 = null,Object? knob3 = null,Object? ctrl1 = null,Object? ctrl2 = null,Object? ctrl3 = null,Object? ctrl4 = null,Object? ctrl5 = null,Object? ctrl6 = null,Object? ctrl7 = null,Object? ctrl8 = null,Object? effectsChainOrder = null,Object? effects = null,}) {
  return _then(_Patch(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as PatchSettings,fxLoop: null == fxLoop ? _self.fxLoop : fxLoop // ignore: cast_nullable_to_non_nullable
as FXLoop,exp1a: null == exp1a ? _self.exp1a : exp1a // ignore: cast_nullable_to_non_nullable
as Exp,exp1b: null == exp1b ? _self.exp1b : exp1b // ignore: cast_nullable_to_non_nullable
as Exp,exp2: null == exp2 ? _self.exp2 : exp2 // ignore: cast_nullable_to_non_nullable
as Exp,knob1: null == knob1 ? _self.knob1 : knob1 // ignore: cast_nullable_to_non_nullable
as Knob,knob2: null == knob2 ? _self.knob2 : knob2 // ignore: cast_nullable_to_non_nullable
as Knob,knob3: null == knob3 ? _self.knob3 : knob3 // ignore: cast_nullable_to_non_nullable
as Knob,ctrl1: null == ctrl1 ? _self.ctrl1 : ctrl1 // ignore: cast_nullable_to_non_nullable
as Ctrl,ctrl2: null == ctrl2 ? _self.ctrl2 : ctrl2 // ignore: cast_nullable_to_non_nullable
as Ctrl,ctrl3: null == ctrl3 ? _self.ctrl3 : ctrl3 // ignore: cast_nullable_to_non_nullable
as Ctrl,ctrl4: null == ctrl4 ? _self.ctrl4 : ctrl4 // ignore: cast_nullable_to_non_nullable
as Ctrl,ctrl5: null == ctrl5 ? _self.ctrl5 : ctrl5 // ignore: cast_nullable_to_non_nullable
as Ctrl,ctrl6: null == ctrl6 ? _self.ctrl6 : ctrl6 // ignore: cast_nullable_to_non_nullable
as Ctrl,ctrl7: null == ctrl7 ? _self.ctrl7 : ctrl7 // ignore: cast_nullable_to_non_nullable
as Ctrl,ctrl8: null == ctrl8 ? _self.ctrl8 : ctrl8 // ignore: cast_nullable_to_non_nullable
as Ctrl,effectsChainOrder: null == effectsChainOrder ? _self._effectsChainOrder : effectsChainOrder // ignore: cast_nullable_to_non_nullable
as List<int>,effects: null == effects ? _self._effects : effects // ignore: cast_nullable_to_non_nullable
as List<Effect>,
  ));
}

/// Create a copy of Patch
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatchSettingsCopyWith<$Res> get settings {
  
  return $PatchSettingsCopyWith<$Res>(_self.settings, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}

// dart format on
