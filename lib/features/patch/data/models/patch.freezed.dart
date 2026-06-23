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

 String get name; int get index; String get author; String get note; PatchSettings get settings; FXLoop get fxLoop; List<Exp> get exps; List<Knob> get knobs; List<Ctrl> get ctrls; List<EffectType> get effectsChainOrder; List<Effect> get effects;
/// Create a copy of Patch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchCopyWith<Patch> get copyWith => _$PatchCopyWithImpl<Patch>(this as Patch, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Patch&&(identical(other.name, name) || other.name == name)&&(identical(other.index, index) || other.index == index)&&(identical(other.author, author) || other.author == author)&&(identical(other.note, note) || other.note == note)&&(identical(other.settings, settings) || other.settings == settings)&&(identical(other.fxLoop, fxLoop) || other.fxLoop == fxLoop)&&const DeepCollectionEquality().equals(other.exps, exps)&&const DeepCollectionEquality().equals(other.knobs, knobs)&&const DeepCollectionEquality().equals(other.ctrls, ctrls)&&const DeepCollectionEquality().equals(other.effectsChainOrder, effectsChainOrder)&&const DeepCollectionEquality().equals(other.effects, effects));
}


@override
int get hashCode => Object.hash(runtimeType,name,index,author,note,settings,fxLoop,const DeepCollectionEquality().hash(exps),const DeepCollectionEquality().hash(knobs),const DeepCollectionEquality().hash(ctrls),const DeepCollectionEquality().hash(effectsChainOrder),const DeepCollectionEquality().hash(effects));

@override
String toString() {
  return 'Patch(name: $name, index: $index, author: $author, note: $note, settings: $settings, fxLoop: $fxLoop, exps: $exps, knobs: $knobs, ctrls: $ctrls, effectsChainOrder: $effectsChainOrder, effects: $effects)';
}


}

/// @nodoc
abstract mixin class $PatchCopyWith<$Res>  {
  factory $PatchCopyWith(Patch value, $Res Function(Patch) _then) = _$PatchCopyWithImpl;
@useResult
$Res call({
 String name, int index, String author, String note, PatchSettings settings, FXLoop fxLoop, List<Exp> exps, List<Knob> knobs, List<Ctrl> ctrls, List<EffectType> effectsChainOrder, List<Effect> effects
});


$PatchSettingsCopyWith<$Res> get settings;$FXLoopCopyWith<$Res> get fxLoop;

}
/// @nodoc
class _$PatchCopyWithImpl<$Res>
    implements $PatchCopyWith<$Res> {
  _$PatchCopyWithImpl(this._self, this._then);

  final Patch _self;
  final $Res Function(Patch) _then;

/// Create a copy of Patch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? index = null,Object? author = null,Object? note = null,Object? settings = null,Object? fxLoop = null,Object? exps = null,Object? knobs = null,Object? ctrls = null,Object? effectsChainOrder = null,Object? effects = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as PatchSettings,fxLoop: null == fxLoop ? _self.fxLoop : fxLoop // ignore: cast_nullable_to_non_nullable
as FXLoop,exps: null == exps ? _self.exps : exps // ignore: cast_nullable_to_non_nullable
as List<Exp>,knobs: null == knobs ? _self.knobs : knobs // ignore: cast_nullable_to_non_nullable
as List<Knob>,ctrls: null == ctrls ? _self.ctrls : ctrls // ignore: cast_nullable_to_non_nullable
as List<Ctrl>,effectsChainOrder: null == effectsChainOrder ? _self.effectsChainOrder : effectsChainOrder // ignore: cast_nullable_to_non_nullable
as List<EffectType>,effects: null == effects ? _self.effects : effects // ignore: cast_nullable_to_non_nullable
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
}/// Create a copy of Patch
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FXLoopCopyWith<$Res> get fxLoop {
  
  return $FXLoopCopyWith<$Res>(_self.fxLoop, (value) {
    return _then(_self.copyWith(fxLoop: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int index,  String author,  String note,  PatchSettings settings,  FXLoop fxLoop,  List<Exp> exps,  List<Knob> knobs,  List<Ctrl> ctrls,  List<EffectType> effectsChainOrder,  List<Effect> effects)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Patch() when $default != null:
return $default(_that.name,_that.index,_that.author,_that.note,_that.settings,_that.fxLoop,_that.exps,_that.knobs,_that.ctrls,_that.effectsChainOrder,_that.effects);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int index,  String author,  String note,  PatchSettings settings,  FXLoop fxLoop,  List<Exp> exps,  List<Knob> knobs,  List<Ctrl> ctrls,  List<EffectType> effectsChainOrder,  List<Effect> effects)  $default,) {final _that = this;
switch (_that) {
case _Patch():
return $default(_that.name,_that.index,_that.author,_that.note,_that.settings,_that.fxLoop,_that.exps,_that.knobs,_that.ctrls,_that.effectsChainOrder,_that.effects);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int index,  String author,  String note,  PatchSettings settings,  FXLoop fxLoop,  List<Exp> exps,  List<Knob> knobs,  List<Ctrl> ctrls,  List<EffectType> effectsChainOrder,  List<Effect> effects)?  $default,) {final _that = this;
switch (_that) {
case _Patch() when $default != null:
return $default(_that.name,_that.index,_that.author,_that.note,_that.settings,_that.fxLoop,_that.exps,_that.knobs,_that.ctrls,_that.effectsChainOrder,_that.effects);case _:
  return null;

}
}

}

/// @nodoc


class _Patch implements Patch {
  const _Patch({required this.name, required this.index, required this.author, required this.note, required this.settings, required this.fxLoop, required final  List<Exp> exps, required final  List<Knob> knobs, required final  List<Ctrl> ctrls, required final  List<EffectType> effectsChainOrder, required final  List<Effect> effects}): _exps = exps,_knobs = knobs,_ctrls = ctrls,_effectsChainOrder = effectsChainOrder,_effects = effects;
  

@override final  String name;
@override final  int index;
@override final  String author;
@override final  String note;
@override final  PatchSettings settings;
@override final  FXLoop fxLoop;
 final  List<Exp> _exps;
@override List<Exp> get exps {
  if (_exps is EqualUnmodifiableListView) return _exps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_exps);
}

 final  List<Knob> _knobs;
@override List<Knob> get knobs {
  if (_knobs is EqualUnmodifiableListView) return _knobs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_knobs);
}

 final  List<Ctrl> _ctrls;
@override List<Ctrl> get ctrls {
  if (_ctrls is EqualUnmodifiableListView) return _ctrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ctrls);
}

 final  List<EffectType> _effectsChainOrder;
@override List<EffectType> get effectsChainOrder {
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Patch&&(identical(other.name, name) || other.name == name)&&(identical(other.index, index) || other.index == index)&&(identical(other.author, author) || other.author == author)&&(identical(other.note, note) || other.note == note)&&(identical(other.settings, settings) || other.settings == settings)&&(identical(other.fxLoop, fxLoop) || other.fxLoop == fxLoop)&&const DeepCollectionEquality().equals(other._exps, _exps)&&const DeepCollectionEquality().equals(other._knobs, _knobs)&&const DeepCollectionEquality().equals(other._ctrls, _ctrls)&&const DeepCollectionEquality().equals(other._effectsChainOrder, _effectsChainOrder)&&const DeepCollectionEquality().equals(other._effects, _effects));
}


@override
int get hashCode => Object.hash(runtimeType,name,index,author,note,settings,fxLoop,const DeepCollectionEquality().hash(_exps),const DeepCollectionEquality().hash(_knobs),const DeepCollectionEquality().hash(_ctrls),const DeepCollectionEquality().hash(_effectsChainOrder),const DeepCollectionEquality().hash(_effects));

@override
String toString() {
  return 'Patch(name: $name, index: $index, author: $author, note: $note, settings: $settings, fxLoop: $fxLoop, exps: $exps, knobs: $knobs, ctrls: $ctrls, effectsChainOrder: $effectsChainOrder, effects: $effects)';
}


}

/// @nodoc
abstract mixin class _$PatchCopyWith<$Res> implements $PatchCopyWith<$Res> {
  factory _$PatchCopyWith(_Patch value, $Res Function(_Patch) _then) = __$PatchCopyWithImpl;
@override @useResult
$Res call({
 String name, int index, String author, String note, PatchSettings settings, FXLoop fxLoop, List<Exp> exps, List<Knob> knobs, List<Ctrl> ctrls, List<EffectType> effectsChainOrder, List<Effect> effects
});


@override $PatchSettingsCopyWith<$Res> get settings;@override $FXLoopCopyWith<$Res> get fxLoop;

}
/// @nodoc
class __$PatchCopyWithImpl<$Res>
    implements _$PatchCopyWith<$Res> {
  __$PatchCopyWithImpl(this._self, this._then);

  final _Patch _self;
  final $Res Function(_Patch) _then;

/// Create a copy of Patch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? index = null,Object? author = null,Object? note = null,Object? settings = null,Object? fxLoop = null,Object? exps = null,Object? knobs = null,Object? ctrls = null,Object? effectsChainOrder = null,Object? effects = null,}) {
  return _then(_Patch(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as PatchSettings,fxLoop: null == fxLoop ? _self.fxLoop : fxLoop // ignore: cast_nullable_to_non_nullable
as FXLoop,exps: null == exps ? _self._exps : exps // ignore: cast_nullable_to_non_nullable
as List<Exp>,knobs: null == knobs ? _self._knobs : knobs // ignore: cast_nullable_to_non_nullable
as List<Knob>,ctrls: null == ctrls ? _self._ctrls : ctrls // ignore: cast_nullable_to_non_nullable
as List<Ctrl>,effectsChainOrder: null == effectsChainOrder ? _self._effectsChainOrder : effectsChainOrder // ignore: cast_nullable_to_non_nullable
as List<EffectType>,effects: null == effects ? _self._effects : effects // ignore: cast_nullable_to_non_nullable
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
}/// Create a copy of Patch
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FXLoopCopyWith<$Res> get fxLoop {
  
  return $FXLoopCopyWith<$Res>(_self.fxLoop, (value) {
    return _then(_self.copyWith(fxLoop: value));
  });
}
}

// dart format on
