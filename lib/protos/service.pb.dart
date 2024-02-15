//
//  Generated code. Do not modify.
//  source: proto/service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class pingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pingRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  pingRequest._() : super();
  factory pingRequest({
    $core.String? message,
  }) {
    final result = create();
    if (message != null) {
      result.message = message;
    }
    return result;
  }
  factory pingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory pingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  pingRequest clone() => pingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  pingRequest copyWith(void Function(pingRequest) updates) => super.copyWith((message) => updates(message as pingRequest)) as pingRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static pingRequest create() => pingRequest._();
  pingRequest createEmptyInstance() => create();
  static $pb.PbList<pingRequest> createRepeated() => $pb.PbList<pingRequest>();
  @$core.pragma('dart2js:noInline')
  static pingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<pingRequest>(create);
  static pingRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class pingResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pingResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  pingResponse._() : super();
  factory pingResponse({
    $core.String? message,
  }) {
    final result = create();
    if (message != null) {
      result.message = message;
    }
    return result;
  }
  factory pingResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory pingResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  pingResponse clone() => pingResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  pingResponse copyWith(void Function(pingResponse) updates) => super.copyWith((message) => updates(message as pingResponse)) as pingResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static pingResponse create() => pingResponse._();
  pingResponse createEmptyInstance() => create();
  static $pb.PbList<pingResponse> createRepeated() => $pb.PbList<pingResponse>();
  @$core.pragma('dart2js:noInline')
  static pingResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<pingResponse>(create);
  static pingResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class landingConfigRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'landingConfigRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'flag')
    ..hasRequiredFields = false
  ;

  landingConfigRequest._() : super();
  factory landingConfigRequest({
    $core.String? flag,
  }) {
    final result = create();
    if (flag != null) {
      result.flag = flag;
    }
    return result;
  }
  factory landingConfigRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory landingConfigRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  landingConfigRequest clone() => landingConfigRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  landingConfigRequest copyWith(void Function(landingConfigRequest) updates) => super.copyWith((message) => updates(message as landingConfigRequest)) as landingConfigRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static landingConfigRequest create() => landingConfigRequest._();
  landingConfigRequest createEmptyInstance() => create();
  static $pb.PbList<landingConfigRequest> createRepeated() => $pb.PbList<landingConfigRequest>();
  @$core.pragma('dart2js:noInline')
  static landingConfigRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<landingConfigRequest>(create);
  static landingConfigRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get flag => $_getSZ(0);
  @$pb.TagNumber(1)
  set flag($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFlag() => $_has(0);
  @$pb.TagNumber(1)
  void clearFlag() => clearField(1);
}

class landingConfigResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'landingConfigResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'backgroundUrl', protoName: 'backgroundUrl')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'welcomeMessage', protoName: 'welcomeMessage')
    ..hasRequiredFields = false
  ;

  landingConfigResponse._() : super();
  factory landingConfigResponse({
    $core.String? backgroundUrl,
    $core.String? welcomeMessage,
  }) {
    final result = create();
    if (backgroundUrl != null) {
      result.backgroundUrl = backgroundUrl;
    }
    if (welcomeMessage != null) {
      result.welcomeMessage = welcomeMessage;
    }
    return result;
  }
  factory landingConfigResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory landingConfigResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  landingConfigResponse clone() => landingConfigResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  landingConfigResponse copyWith(void Function(landingConfigResponse) updates) => super.copyWith((message) => updates(message as landingConfigResponse)) as landingConfigResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static landingConfigResponse create() => landingConfigResponse._();
  landingConfigResponse createEmptyInstance() => create();
  static $pb.PbList<landingConfigResponse> createRepeated() => $pb.PbList<landingConfigResponse>();
  @$core.pragma('dart2js:noInline')
  static landingConfigResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<landingConfigResponse>(create);
  static landingConfigResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get backgroundUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set backgroundUrl($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBackgroundUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearBackgroundUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get welcomeMessage => $_getSZ(1);
  @$pb.TagNumber(2)
  set welcomeMessage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWelcomeMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearWelcomeMessage() => clearField(2);
}

class otpRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'otpRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msisdn')
    ..hasRequiredFields = false
  ;

  otpRequest._() : super();
  factory otpRequest({
    $core.String? msisdn,
  }) {
    final result = create();
    if (msisdn != null) {
      result.msisdn = msisdn;
    }
    return result;
  }
  factory otpRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory otpRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  otpRequest clone() => otpRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  otpRequest copyWith(void Function(otpRequest) updates) => super.copyWith((message) => updates(message as otpRequest)) as otpRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static otpRequest create() => otpRequest._();
  otpRequest createEmptyInstance() => create();
  static $pb.PbList<otpRequest> createRepeated() => $pb.PbList<otpRequest>();
  @$core.pragma('dart2js:noInline')
  static otpRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<otpRequest>(create);
  static otpRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get msisdn => $_getSZ(0);
  @$pb.TagNumber(1)
  set msisdn($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsisdn() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsisdn() => clearField(1);
}

class otpResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'otpResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  otpResponse._() : super();
  factory otpResponse({
    $core.String? message,
  }) {
    final result = create();
    if (message != null) {
      result.message = message;
    }
    return result;
  }
  factory otpResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory otpResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  otpResponse clone() => otpResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  otpResponse copyWith(void Function(otpResponse) updates) => super.copyWith((message) => updates(message as otpResponse)) as otpResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static otpResponse create() => otpResponse._();
  otpResponse createEmptyInstance() => create();
  static $pb.PbList<otpResponse> createRepeated() => $pb.PbList<otpResponse>();
  @$core.pragma('dart2js:noInline')
  static otpResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<otpResponse>(create);
  static otpResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class checkOtpRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'checkOtpRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msisdn')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'otp')
    ..hasRequiredFields = false
  ;

  checkOtpRequest._() : super();
  factory checkOtpRequest({
    $core.String? msisdn,
    $core.String? otp,
  }) {
    final result = create();
    if (msisdn != null) {
      result.msisdn = msisdn;
    }
    if (otp != null) {
      result.otp = otp;
    }
    return result;
  }
  factory checkOtpRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory checkOtpRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  checkOtpRequest clone() => checkOtpRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  checkOtpRequest copyWith(void Function(checkOtpRequest) updates) => super.copyWith((message) => updates(message as checkOtpRequest)) as checkOtpRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static checkOtpRequest create() => checkOtpRequest._();
  checkOtpRequest createEmptyInstance() => create();
  static $pb.PbList<checkOtpRequest> createRepeated() => $pb.PbList<checkOtpRequest>();
  @$core.pragma('dart2js:noInline')
  static checkOtpRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<checkOtpRequest>(create);
  static checkOtpRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get msisdn => $_getSZ(0);
  @$pb.TagNumber(1)
  set msisdn($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsisdn() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsisdn() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get otp => $_getSZ(1);
  @$pb.TagNumber(2)
  set otp($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOtp() => $_has(1);
  @$pb.TagNumber(2)
  void clearOtp() => clearField(2);
}

class checkOtpResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'checkOtpResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  checkOtpResponse._() : super();
  factory checkOtpResponse({
    $core.String? message,
  }) {
    final result = create();
    if (message != null) {
      result.message = message;
    }
    return result;
  }
  factory checkOtpResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory checkOtpResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  checkOtpResponse clone() => checkOtpResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  checkOtpResponse copyWith(void Function(checkOtpResponse) updates) => super.copyWith((message) => updates(message as checkOtpResponse)) as checkOtpResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static checkOtpResponse create() => checkOtpResponse._();
  checkOtpResponse createEmptyInstance() => create();
  static $pb.PbList<checkOtpResponse> createRepeated() => $pb.PbList<checkOtpResponse>();
  @$core.pragma('dart2js:noInline')
  static checkOtpResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<checkOtpResponse>(create);
  static checkOtpResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class referenteRegisterRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'referenteRegisterRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msisdn')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'apellidos')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nombres')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mail')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fechaNacimiento', protoName: 'fechaNacimiento')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ciudad')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mediosPagos', protoName: 'mediosPagos')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entidadFinanciera', protoName: 'entidadFinanciera')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tipoCuenta', protoName: 'tipoCuenta')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clave')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionString', protoName: 'sessionString')
    ..hasRequiredFields = false
  ;

  referenteRegisterRequest._() : super();
  factory referenteRegisterRequest({
    $core.String? msisdn,
    $core.String? apellidos,
    $core.String? nombres,
    $core.String? mail,
    $core.String? fechaNacimiento,
    $core.String? ciudad,
    $core.String? mediosPagos,
    $core.String? entidadFinanciera,
    $core.String? tipoCuenta,
    $core.String? clave,
    $core.String? sessionString,
  }) {
    final result = create();
    if (msisdn != null) {
      result.msisdn = msisdn;
    }
    if (apellidos != null) {
      result.apellidos = apellidos;
    }
    if (nombres != null) {
      result.nombres = nombres;
    }
    if (mail != null) {
      result.mail = mail;
    }
    if (fechaNacimiento != null) {
      result.fechaNacimiento = fechaNacimiento;
    }
    if (ciudad != null) {
      result.ciudad = ciudad;
    }
    if (mediosPagos != null) {
      result.mediosPagos = mediosPagos;
    }
    if (entidadFinanciera != null) {
      result.entidadFinanciera = entidadFinanciera;
    }
    if (tipoCuenta != null) {
      result.tipoCuenta = tipoCuenta;
    }
    if (clave != null) {
      result.clave = clave;
    }
    if (sessionString != null) {
      result.sessionString = sessionString;
    }
    return result;
  }
  factory referenteRegisterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory referenteRegisterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  referenteRegisterRequest clone() => referenteRegisterRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  referenteRegisterRequest copyWith(void Function(referenteRegisterRequest) updates) => super.copyWith((message) => updates(message as referenteRegisterRequest)) as referenteRegisterRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static referenteRegisterRequest create() => referenteRegisterRequest._();
  referenteRegisterRequest createEmptyInstance() => create();
  static $pb.PbList<referenteRegisterRequest> createRepeated() => $pb.PbList<referenteRegisterRequest>();
  @$core.pragma('dart2js:noInline')
  static referenteRegisterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<referenteRegisterRequest>(create);
  static referenteRegisterRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get msisdn => $_getSZ(0);
  @$pb.TagNumber(1)
  set msisdn($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsisdn() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsisdn() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get apellidos => $_getSZ(1);
  @$pb.TagNumber(2)
  set apellidos($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasApellidos() => $_has(1);
  @$pb.TagNumber(2)
  void clearApellidos() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get nombres => $_getSZ(2);
  @$pb.TagNumber(3)
  set nombres($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNombres() => $_has(2);
  @$pb.TagNumber(3)
  void clearNombres() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get mail => $_getSZ(3);
  @$pb.TagNumber(4)
  set mail($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMail() => $_has(3);
  @$pb.TagNumber(4)
  void clearMail() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get fechaNacimiento => $_getSZ(4);
  @$pb.TagNumber(5)
  set fechaNacimiento($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFechaNacimiento() => $_has(4);
  @$pb.TagNumber(5)
  void clearFechaNacimiento() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get ciudad => $_getSZ(5);
  @$pb.TagNumber(6)
  set ciudad($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCiudad() => $_has(5);
  @$pb.TagNumber(6)
  void clearCiudad() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get mediosPagos => $_getSZ(6);
  @$pb.TagNumber(7)
  set mediosPagos($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMediosPagos() => $_has(6);
  @$pb.TagNumber(7)
  void clearMediosPagos() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get entidadFinanciera => $_getSZ(7);
  @$pb.TagNumber(8)
  set entidadFinanciera($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasEntidadFinanciera() => $_has(7);
  @$pb.TagNumber(8)
  void clearEntidadFinanciera() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get tipoCuenta => $_getSZ(8);
  @$pb.TagNumber(9)
  set tipoCuenta($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTipoCuenta() => $_has(8);
  @$pb.TagNumber(9)
  void clearTipoCuenta() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get clave => $_getSZ(9);
  @$pb.TagNumber(10)
  set clave($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasClave() => $_has(9);
  @$pb.TagNumber(10)
  void clearClave() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get sessionString => $_getSZ(10);
  @$pb.TagNumber(11)
  set sessionString($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSessionString() => $_has(10);
  @$pb.TagNumber(11)
  void clearSessionString() => clearField(11);
}

class referenteRegisterResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'referenteRegisterResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  referenteRegisterResponse._() : super();
  factory referenteRegisterResponse({
    $core.String? message,
  }) {
    final result = create();
    if (message != null) {
      result.message = message;
    }
    return result;
  }
  factory referenteRegisterResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory referenteRegisterResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  referenteRegisterResponse clone() => referenteRegisterResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  referenteRegisterResponse copyWith(void Function(referenteRegisterResponse) updates) => super.copyWith((message) => updates(message as referenteRegisterResponse)) as referenteRegisterResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static referenteRegisterResponse create() => referenteRegisterResponse._();
  referenteRegisterResponse createEmptyInstance() => create();
  static $pb.PbList<referenteRegisterResponse> createRepeated() => $pb.PbList<referenteRegisterResponse>();
  @$core.pragma('dart2js:noInline')
  static referenteRegisterResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<referenteRegisterResponse>(create);
  static referenteRegisterResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class getReferenteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'getReferenteRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msisdn')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionString', protoName: 'sessionString')
    ..hasRequiredFields = false
  ;

  getReferenteRequest._() : super();
  factory getReferenteRequest({
    $core.String? msisdn,
    $core.String? sessionString,
  }) {
    final result = create();
    if (msisdn != null) {
      result.msisdn = msisdn;
    }
    if (sessionString != null) {
      result.sessionString = sessionString;
    }
    return result;
  }
  factory getReferenteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory getReferenteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  getReferenteRequest clone() => getReferenteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  getReferenteRequest copyWith(void Function(getReferenteRequest) updates) => super.copyWith((message) => updates(message as getReferenteRequest)) as getReferenteRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static getReferenteRequest create() => getReferenteRequest._();
  getReferenteRequest createEmptyInstance() => create();
  static $pb.PbList<getReferenteRequest> createRepeated() => $pb.PbList<getReferenteRequest>();
  @$core.pragma('dart2js:noInline')
  static getReferenteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<getReferenteRequest>(create);
  static getReferenteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get msisdn => $_getSZ(0);
  @$pb.TagNumber(1)
  set msisdn($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsisdn() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsisdn() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sessionString => $_getSZ(1);
  @$pb.TagNumber(2)
  set sessionString($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSessionString() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionString() => clearField(2);
}

class getReferenteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'getReferenteResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'apellidos')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nombres')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mail')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fechaNacimiento', protoName: 'fechaNacimiento')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ciudad')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mediosPagos', protoName: 'mediosPagos')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entidadFinanciera', protoName: 'entidadFinanciera')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'puntos')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'puntosFechaVencimiento', protoName: 'puntosFechaVencimiento')
    ..hasRequiredFields = false
  ;

  getReferenteResponse._() : super();
  factory getReferenteResponse({
    $core.String? apellidos,
    $core.String? nombres,
    $core.String? mail,
    $core.String? fechaNacimiento,
    $core.String? ciudad,
    $core.String? mediosPagos,
    $core.String? entidadFinanciera,
    $core.String? puntos,
    $core.String? puntosFechaVencimiento,
  }) {
    final result = create();
    if (apellidos != null) {
      result.apellidos = apellidos;
    }
    if (nombres != null) {
      result.nombres = nombres;
    }
    if (mail != null) {
      result.mail = mail;
    }
    if (fechaNacimiento != null) {
      result.fechaNacimiento = fechaNacimiento;
    }
    if (ciudad != null) {
      result.ciudad = ciudad;
    }
    if (mediosPagos != null) {
      result.mediosPagos = mediosPagos;
    }
    if (entidadFinanciera != null) {
      result.entidadFinanciera = entidadFinanciera;
    }
    if (puntos != null) {
      result.puntos = puntos;
    }
    if (puntosFechaVencimiento != null) {
      result.puntosFechaVencimiento = puntosFechaVencimiento;
    }
    return result;
  }
  factory getReferenteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory getReferenteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  getReferenteResponse clone() => getReferenteResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  getReferenteResponse copyWith(void Function(getReferenteResponse) updates) => super.copyWith((message) => updates(message as getReferenteResponse)) as getReferenteResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static getReferenteResponse create() => getReferenteResponse._();
  getReferenteResponse createEmptyInstance() => create();
  static $pb.PbList<getReferenteResponse> createRepeated() => $pb.PbList<getReferenteResponse>();
  @$core.pragma('dart2js:noInline')
  static getReferenteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<getReferenteResponse>(create);
  static getReferenteResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get apellidos => $_getSZ(0);
  @$pb.TagNumber(1)
  set apellidos($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApellidos() => $_has(0);
  @$pb.TagNumber(1)
  void clearApellidos() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nombres => $_getSZ(1);
  @$pb.TagNumber(2)
  set nombres($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNombres() => $_has(1);
  @$pb.TagNumber(2)
  void clearNombres() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get mail => $_getSZ(2);
  @$pb.TagNumber(3)
  set mail($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMail() => $_has(2);
  @$pb.TagNumber(3)
  void clearMail() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get fechaNacimiento => $_getSZ(3);
  @$pb.TagNumber(4)
  set fechaNacimiento($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFechaNacimiento() => $_has(3);
  @$pb.TagNumber(4)
  void clearFechaNacimiento() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get ciudad => $_getSZ(4);
  @$pb.TagNumber(5)
  set ciudad($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCiudad() => $_has(4);
  @$pb.TagNumber(5)
  void clearCiudad() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get mediosPagos => $_getSZ(5);
  @$pb.TagNumber(6)
  set mediosPagos($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMediosPagos() => $_has(5);
  @$pb.TagNumber(6)
  void clearMediosPagos() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get entidadFinanciera => $_getSZ(6);
  @$pb.TagNumber(7)
  set entidadFinanciera($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasEntidadFinanciera() => $_has(6);
  @$pb.TagNumber(7)
  void clearEntidadFinanciera() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get puntos => $_getSZ(7);
  @$pb.TagNumber(8)
  set puntos($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPuntos() => $_has(7);
  @$pb.TagNumber(8)
  void clearPuntos() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get puntosFechaVencimiento => $_getSZ(8);
  @$pb.TagNumber(9)
  set puntosFechaVencimiento($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPuntosFechaVencimiento() => $_has(8);
  @$pb.TagNumber(9)
  void clearPuntosFechaVencimiento() => clearField(9);
}

class ServiceApi {
  $pb.RpcClient _client;
  ServiceApi(this._client);

  $async.Future<landingConfigResponse> ladingConfig($pb.ClientContext? ctx, landingConfigRequest request) {
    var emptyResponse = landingConfigResponse();
    return _client.invoke<landingConfigResponse>(ctx, 'Service', 'ladingConfig', request, emptyResponse);
  }
  $async.Future<otpResponse> otp($pb.ClientContext? ctx, otpRequest request) {
    var emptyResponse = otpResponse();
    return _client.invoke<otpResponse>(ctx, 'Service', 'otp', request, emptyResponse);
  }
  $async.Future<checkOtpResponse> checkOtp($pb.ClientContext? ctx, checkOtpRequest request) {
    var emptyResponse = checkOtpResponse();
    return _client.invoke<checkOtpResponse>(ctx, 'Service', 'checkOtp', request, emptyResponse);
  }
  $async.Future<pingResponse> pingPong($pb.ClientContext? ctx, pingRequest request) {
    var emptyResponse = pingResponse();
    return _client.invoke<pingResponse>(ctx, 'Service', 'PingPong', request, emptyResponse);
  }
  $async.Future<referenteRegisterResponse> referenteRegister($pb.ClientContext? ctx, referenteRegisterRequest request) {
    var emptyResponse = referenteRegisterResponse();
    return _client.invoke<referenteRegisterResponse>(ctx, 'Service', 'referenteRegister', request, emptyResponse);
  }
  $async.Future<getReferenteResponse> getReferente($pb.ClientContext? ctx, getReferenteRequest request) {
    var emptyResponse = getReferenteResponse();
    return _client.invoke<getReferenteResponse>(ctx, 'Service', 'getReferente', request, emptyResponse);
  }
}

