///
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

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
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'login')
    ..hasRequiredFields = false
  ;

  otpRequest._() : super();
  factory otpRequest({
    $core.String? msisdn,
    $core.bool? login,
  }) {
    final result = create();
    if (msisdn != null) {
      result.msisdn = msisdn;
    }
    if (login != null) {
      result.login = login;
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

  @$pb.TagNumber(2)
  $core.bool get login => $_getBF(1);
  @$pb.TagNumber(2)
  set login($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLogin() => $_has(1);
  @$pb.TagNumber(2)
  void clearLogin() => clearField(2);
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
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'date')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'identificacion')
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
    $core.String? date,
    $core.String? identificacion,
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
    if (date != null) {
      result.date = date;
    }
    if (identificacion != null) {
      result.identificacion = identificacion;
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

  @$pb.TagNumber(12)
  $core.String get date => $_getSZ(11);
  @$pb.TagNumber(12)
  set date($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasDate() => $_has(11);
  @$pb.TagNumber(12)
  void clearDate() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get identificacion => $_getSZ(12);
  @$pb.TagNumber(13)
  set identificacion($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasIdentificacion() => $_has(12);
  @$pb.TagNumber(13)
  void clearIdentificacion() => clearField(13);
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
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionString', protoName: 'sessionString')
    ..hasRequiredFields = false
  ;

  getReferenteRequest._() : super();
  factory getReferenteRequest({
    $core.String? sessionString,
  }) {
    final result = create();
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
  $core.String get sessionString => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionString($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionString() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionString() => clearField(1);
}

class getReferenteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'getReferenteResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'apellidos')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nombres')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mail')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fechaNacimiento', protoName: 'fechaNacimiento')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ciudad')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idMediosPagos', protoName: 'idMediosPagos')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entidadFinanciera', protoName: 'entidadFinanciera')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'puntos')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'puntosFechaVencimiento', protoName: 'puntosFechaVencimiento')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msisdn')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codigoReferente', protoName: 'codigoReferente')
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idreferente', $pb.PbFieldType.O3)
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msisdnRecomendado', protoName: 'msisdnRecomendado')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idTipoCuentaReferente', protoName: 'idTipoCuentaReferente')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionString', protoName: 'sessionString')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'identificacion')
    ..a<$core.int>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'puntosEnProceso', $pb.PbFieldType.O3, protoName: 'puntosEnProceso')
    ..hasRequiredFields = false
  ;

  getReferenteResponse._() : super();
  factory getReferenteResponse({
    $core.String? apellidos,
    $core.String? nombres,
    $core.String? mail,
    $core.String? fechaNacimiento,
    $core.String? ciudad,
    $core.String? idMediosPagos,
    $core.String? entidadFinanciera,
    $core.String? puntos,
    $core.String? puntosFechaVencimiento,
    $core.String? msisdn,
    $core.String? codigoReferente,
    $core.int? idreferente,
    $core.String? msisdnRecomendado,
    $core.String? idTipoCuentaReferente,
    $core.String? sessionString,
    $core.String? identificacion,
    $core.int? puntosEnProceso,
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
    if (idMediosPagos != null) {
      result.idMediosPagos = idMediosPagos;
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
    if (msisdn != null) {
      result.msisdn = msisdn;
    }
    if (codigoReferente != null) {
      result.codigoReferente = codigoReferente;
    }
    if (idreferente != null) {
      result.idreferente = idreferente;
    }
    if (msisdnRecomendado != null) {
      result.msisdnRecomendado = msisdnRecomendado;
    }
    if (idTipoCuentaReferente != null) {
      result.idTipoCuentaReferente = idTipoCuentaReferente;
    }
    if (sessionString != null) {
      result.sessionString = sessionString;
    }
    if (identificacion != null) {
      result.identificacion = identificacion;
    }
    if (puntosEnProceso != null) {
      result.puntosEnProceso = puntosEnProceso;
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
  $core.String get idMediosPagos => $_getSZ(5);
  @$pb.TagNumber(6)
  set idMediosPagos($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIdMediosPagos() => $_has(5);
  @$pb.TagNumber(6)
  void clearIdMediosPagos() => clearField(6);

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

  @$pb.TagNumber(10)
  $core.String get msisdn => $_getSZ(9);
  @$pb.TagNumber(10)
  set msisdn($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasMsisdn() => $_has(9);
  @$pb.TagNumber(10)
  void clearMsisdn() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get codigoReferente => $_getSZ(10);
  @$pb.TagNumber(11)
  set codigoReferente($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasCodigoReferente() => $_has(10);
  @$pb.TagNumber(11)
  void clearCodigoReferente() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get idreferente => $_getIZ(11);
  @$pb.TagNumber(12)
  set idreferente($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasIdreferente() => $_has(11);
  @$pb.TagNumber(12)
  void clearIdreferente() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get msisdnRecomendado => $_getSZ(12);
  @$pb.TagNumber(13)
  set msisdnRecomendado($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasMsisdnRecomendado() => $_has(12);
  @$pb.TagNumber(13)
  void clearMsisdnRecomendado() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get idTipoCuentaReferente => $_getSZ(13);
  @$pb.TagNumber(14)
  set idTipoCuentaReferente($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasIdTipoCuentaReferente() => $_has(13);
  @$pb.TagNumber(14)
  void clearIdTipoCuentaReferente() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get sessionString => $_getSZ(14);
  @$pb.TagNumber(15)
  set sessionString($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasSessionString() => $_has(14);
  @$pb.TagNumber(15)
  void clearSessionString() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get identificacion => $_getSZ(15);
  @$pb.TagNumber(16)
  set identificacion($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasIdentificacion() => $_has(15);
  @$pb.TagNumber(16)
  void clearIdentificacion() => clearField(16);

  @$pb.TagNumber(17)
  $core.int get puntosEnProceso => $_getIZ(16);
  @$pb.TagNumber(17)
  set puntosEnProceso($core.int v) { $_setSignedInt32(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasPuntosEnProceso() => $_has(16);
  @$pb.TagNumber(17)
  void clearPuntosEnProceso() => clearField(17);
}

class getReferenteByEmailRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'getReferenteByEmailRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mail')
    ..hasRequiredFields = false
  ;

  getReferenteByEmailRequest._() : super();
  factory getReferenteByEmailRequest({
    $core.String? mail,
  }) {
    final result = create();
    if (mail != null) {
      result.mail = mail;
    }
    return result;
  }
  factory getReferenteByEmailRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory getReferenteByEmailRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  getReferenteByEmailRequest clone() => getReferenteByEmailRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  getReferenteByEmailRequest copyWith(void Function(getReferenteByEmailRequest) updates) => super.copyWith((message) => updates(message as getReferenteByEmailRequest)) as getReferenteByEmailRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static getReferenteByEmailRequest create() => getReferenteByEmailRequest._();
  getReferenteByEmailRequest createEmptyInstance() => create();
  static $pb.PbList<getReferenteByEmailRequest> createRepeated() => $pb.PbList<getReferenteByEmailRequest>();
  @$core.pragma('dart2js:noInline')
  static getReferenteByEmailRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<getReferenteByEmailRequest>(create);
  static getReferenteByEmailRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mail => $_getSZ(0);
  @$pb.TagNumber(1)
  set mail($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMail() => $_has(0);
  @$pb.TagNumber(1)
  void clearMail() => clearField(1);
}

class getReferenteByEmailResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'getReferenteByEmailResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'apellidos')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nombres')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mail')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fechaNacimiento', protoName: 'fechaNacimiento')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ciudad')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idMediosPagos', protoName: 'idMediosPagos')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entidadFinanciera', protoName: 'entidadFinanciera')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'puntos')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'puntosFechaVencimiento', protoName: 'puntosFechaVencimiento')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msisdn')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codigoReferente', protoName: 'codigoReferente')
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idreferente', $pb.PbFieldType.O3)
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msisdnRecomendado', protoName: 'msisdnRecomendado')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idTipoCuentaReferente', protoName: 'idTipoCuentaReferente')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionString', protoName: 'sessionString')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'identificacion')
    ..a<$core.int>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'puntosEnProceso', $pb.PbFieldType.O3, protoName: 'puntosEnProceso')
    ..hasRequiredFields = false
  ;

  getReferenteByEmailResponse._() : super();
  factory getReferenteByEmailResponse({
    $core.String? apellidos,
    $core.String? nombres,
    $core.String? mail,
    $core.String? fechaNacimiento,
    $core.String? ciudad,
    $core.String? idMediosPagos,
    $core.String? entidadFinanciera,
    $core.String? puntos,
    $core.String? puntosFechaVencimiento,
    $core.String? msisdn,
    $core.String? codigoReferente,
    $core.int? idreferente,
    $core.String? msisdnRecomendado,
    $core.String? idTipoCuentaReferente,
    $core.String? sessionString,
    $core.String? identificacion,
    $core.int? puntosEnProceso,
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
    if (idMediosPagos != null) {
      result.idMediosPagos = idMediosPagos;
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
    if (msisdn != null) {
      result.msisdn = msisdn;
    }
    if (codigoReferente != null) {
      result.codigoReferente = codigoReferente;
    }
    if (idreferente != null) {
      result.idreferente = idreferente;
    }
    if (msisdnRecomendado != null) {
      result.msisdnRecomendado = msisdnRecomendado;
    }
    if (idTipoCuentaReferente != null) {
      result.idTipoCuentaReferente = idTipoCuentaReferente;
    }
    if (sessionString != null) {
      result.sessionString = sessionString;
    }
    if (identificacion != null) {
      result.identificacion = identificacion;
    }
    if (puntosEnProceso != null) {
      result.puntosEnProceso = puntosEnProceso;
    }
    return result;
  }
  factory getReferenteByEmailResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory getReferenteByEmailResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  getReferenteByEmailResponse clone() => getReferenteByEmailResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  getReferenteByEmailResponse copyWith(void Function(getReferenteByEmailResponse) updates) => super.copyWith((message) => updates(message as getReferenteByEmailResponse)) as getReferenteByEmailResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static getReferenteByEmailResponse create() => getReferenteByEmailResponse._();
  getReferenteByEmailResponse createEmptyInstance() => create();
  static $pb.PbList<getReferenteByEmailResponse> createRepeated() => $pb.PbList<getReferenteByEmailResponse>();
  @$core.pragma('dart2js:noInline')
  static getReferenteByEmailResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<getReferenteByEmailResponse>(create);
  static getReferenteByEmailResponse? _defaultInstance;

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
  $core.String get idMediosPagos => $_getSZ(5);
  @$pb.TagNumber(6)
  set idMediosPagos($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIdMediosPagos() => $_has(5);
  @$pb.TagNumber(6)
  void clearIdMediosPagos() => clearField(6);

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

  @$pb.TagNumber(10)
  $core.String get msisdn => $_getSZ(9);
  @$pb.TagNumber(10)
  set msisdn($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasMsisdn() => $_has(9);
  @$pb.TagNumber(10)
  void clearMsisdn() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get codigoReferente => $_getSZ(10);
  @$pb.TagNumber(11)
  set codigoReferente($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasCodigoReferente() => $_has(10);
  @$pb.TagNumber(11)
  void clearCodigoReferente() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get idreferente => $_getIZ(11);
  @$pb.TagNumber(12)
  set idreferente($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasIdreferente() => $_has(11);
  @$pb.TagNumber(12)
  void clearIdreferente() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get msisdnRecomendado => $_getSZ(12);
  @$pb.TagNumber(13)
  set msisdnRecomendado($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasMsisdnRecomendado() => $_has(12);
  @$pb.TagNumber(13)
  void clearMsisdnRecomendado() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get idTipoCuentaReferente => $_getSZ(13);
  @$pb.TagNumber(14)
  set idTipoCuentaReferente($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasIdTipoCuentaReferente() => $_has(13);
  @$pb.TagNumber(14)
  void clearIdTipoCuentaReferente() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get sessionString => $_getSZ(14);
  @$pb.TagNumber(15)
  set sessionString($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasSessionString() => $_has(14);
  @$pb.TagNumber(15)
  void clearSessionString() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get identificacion => $_getSZ(15);
  @$pb.TagNumber(16)
  set identificacion($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasIdentificacion() => $_has(15);
  @$pb.TagNumber(16)
  void clearIdentificacion() => clearField(16);

  @$pb.TagNumber(17)
  $core.int get puntosEnProceso => $_getIZ(16);
  @$pb.TagNumber(17)
  set puntosEnProceso($core.int v) { $_setSignedInt32(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasPuntosEnProceso() => $_has(16);
  @$pb.TagNumber(17)
  void clearPuntosEnProceso() => clearField(17);
}

class referenteUpdateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'referenteUpdateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionString', protoName: 'sessionString')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'apellidos')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nombres')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msisdn')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mail')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fechaNacimiento', protoName: 'fechaNacimiento')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ciudad')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idMediosPagos', protoName: 'idMediosPagos')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entidadFinanciera', protoName: 'entidadFinanciera')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clave')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msisdnRecomendado', protoName: 'msisdnRecomendado')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idreferente')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'date')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'identificacion')
    ..hasRequiredFields = false
  ;

  referenteUpdateRequest._() : super();
  factory referenteUpdateRequest({
    $core.String? sessionString,
    $core.String? apellidos,
    $core.String? nombres,
    $core.String? msisdn,
    $core.String? mail,
    $core.String? fechaNacimiento,
    $core.String? ciudad,
    $core.String? idMediosPagos,
    $core.String? entidadFinanciera,
    $core.String? clave,
    $core.String? msisdnRecomendado,
    $core.String? idreferente,
    $core.String? date,
    $core.String? identificacion,
  }) {
    final result = create();
    if (sessionString != null) {
      result.sessionString = sessionString;
    }
    if (apellidos != null) {
      result.apellidos = apellidos;
    }
    if (nombres != null) {
      result.nombres = nombres;
    }
    if (msisdn != null) {
      result.msisdn = msisdn;
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
    if (idMediosPagos != null) {
      result.idMediosPagos = idMediosPagos;
    }
    if (entidadFinanciera != null) {
      result.entidadFinanciera = entidadFinanciera;
    }
    if (clave != null) {
      result.clave = clave;
    }
    if (msisdnRecomendado != null) {
      result.msisdnRecomendado = msisdnRecomendado;
    }
    if (idreferente != null) {
      result.idreferente = idreferente;
    }
    if (date != null) {
      result.date = date;
    }
    if (identificacion != null) {
      result.identificacion = identificacion;
    }
    return result;
  }
  factory referenteUpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory referenteUpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  referenteUpdateRequest clone() => referenteUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  referenteUpdateRequest copyWith(void Function(referenteUpdateRequest) updates) => super.copyWith((message) => updates(message as referenteUpdateRequest)) as referenteUpdateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static referenteUpdateRequest create() => referenteUpdateRequest._();
  referenteUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<referenteUpdateRequest> createRepeated() => $pb.PbList<referenteUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static referenteUpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<referenteUpdateRequest>(create);
  static referenteUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionString => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionString($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionString() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionString() => clearField(1);

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

  @$pb.TagNumber(5)
  $core.String get msisdn => $_getSZ(3);
  @$pb.TagNumber(5)
  set msisdn($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasMsisdn() => $_has(3);
  @$pb.TagNumber(5)
  void clearMsisdn() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get mail => $_getSZ(4);
  @$pb.TagNumber(6)
  set mail($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasMail() => $_has(4);
  @$pb.TagNumber(6)
  void clearMail() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get fechaNacimiento => $_getSZ(5);
  @$pb.TagNumber(7)
  set fechaNacimiento($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasFechaNacimiento() => $_has(5);
  @$pb.TagNumber(7)
  void clearFechaNacimiento() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get ciudad => $_getSZ(6);
  @$pb.TagNumber(8)
  set ciudad($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasCiudad() => $_has(6);
  @$pb.TagNumber(8)
  void clearCiudad() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get idMediosPagos => $_getSZ(7);
  @$pb.TagNumber(9)
  set idMediosPagos($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasIdMediosPagos() => $_has(7);
  @$pb.TagNumber(9)
  void clearIdMediosPagos() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get entidadFinanciera => $_getSZ(8);
  @$pb.TagNumber(10)
  set entidadFinanciera($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasEntidadFinanciera() => $_has(8);
  @$pb.TagNumber(10)
  void clearEntidadFinanciera() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get clave => $_getSZ(9);
  @$pb.TagNumber(11)
  set clave($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasClave() => $_has(9);
  @$pb.TagNumber(11)
  void clearClave() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get msisdnRecomendado => $_getSZ(10);
  @$pb.TagNumber(12)
  set msisdnRecomendado($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasMsisdnRecomendado() => $_has(10);
  @$pb.TagNumber(12)
  void clearMsisdnRecomendado() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get idreferente => $_getSZ(11);
  @$pb.TagNumber(13)
  set idreferente($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(13)
  $core.bool hasIdreferente() => $_has(11);
  @$pb.TagNumber(13)
  void clearIdreferente() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get date => $_getSZ(12);
  @$pb.TagNumber(14)
  set date($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(14)
  $core.bool hasDate() => $_has(12);
  @$pb.TagNumber(14)
  void clearDate() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get identificacion => $_getSZ(13);
  @$pb.TagNumber(15)
  set identificacion($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(15)
  $core.bool hasIdentificacion() => $_has(13);
  @$pb.TagNumber(15)
  void clearIdentificacion() => clearField(15);
}

class referenteUpdateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'referenteUpdateResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'puntos')
    ..hasRequiredFields = false
  ;

  referenteUpdateResponse._() : super();
  factory referenteUpdateResponse({
    $core.String? message,
    $core.String? puntos,
  }) {
    final result = create();
    if (message != null) {
      result.message = message;
    }
    if (puntos != null) {
      result.puntos = puntos;
    }
    return result;
  }
  factory referenteUpdateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory referenteUpdateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  referenteUpdateResponse clone() => referenteUpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  referenteUpdateResponse copyWith(void Function(referenteUpdateResponse) updates) => super.copyWith((message) => updates(message as referenteUpdateResponse)) as referenteUpdateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static referenteUpdateResponse create() => referenteUpdateResponse._();
  referenteUpdateResponse createEmptyInstance() => create();
  static $pb.PbList<referenteUpdateResponse> createRepeated() => $pb.PbList<referenteUpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static referenteUpdateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<referenteUpdateResponse>(create);
  static referenteUpdateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get puntos => $_getSZ(1);
  @$pb.TagNumber(2)
  set puntos($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPuntos() => $_has(1);
  @$pb.TagNumber(2)
  void clearPuntos() => clearField(2);
}

class refAppRecomendadoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'refAppRecomendadoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionString', protoName: 'sessionString')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idreferente')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msisdnRecomendado', protoName: 'msisdnRecomendado')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'date')
    ..hasRequiredFields = false
  ;

  refAppRecomendadoRequest._() : super();
  factory refAppRecomendadoRequest({
    $core.String? sessionString,
    $core.String? idreferente,
    $core.String? msisdnRecomendado,
    $core.String? date,
  }) {
    final result = create();
    if (sessionString != null) {
      result.sessionString = sessionString;
    }
    if (idreferente != null) {
      result.idreferente = idreferente;
    }
    if (msisdnRecomendado != null) {
      result.msisdnRecomendado = msisdnRecomendado;
    }
    if (date != null) {
      result.date = date;
    }
    return result;
  }
  factory refAppRecomendadoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory refAppRecomendadoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  refAppRecomendadoRequest clone() => refAppRecomendadoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  refAppRecomendadoRequest copyWith(void Function(refAppRecomendadoRequest) updates) => super.copyWith((message) => updates(message as refAppRecomendadoRequest)) as refAppRecomendadoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static refAppRecomendadoRequest create() => refAppRecomendadoRequest._();
  refAppRecomendadoRequest createEmptyInstance() => create();
  static $pb.PbList<refAppRecomendadoRequest> createRepeated() => $pb.PbList<refAppRecomendadoRequest>();
  @$core.pragma('dart2js:noInline')
  static refAppRecomendadoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<refAppRecomendadoRequest>(create);
  static refAppRecomendadoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionString => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionString($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionString() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionString() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get idreferente => $_getSZ(1);
  @$pb.TagNumber(2)
  set idreferente($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdreferente() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdreferente() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get msisdnRecomendado => $_getSZ(2);
  @$pb.TagNumber(3)
  set msisdnRecomendado($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMsisdnRecomendado() => $_has(2);
  @$pb.TagNumber(3)
  void clearMsisdnRecomendado() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get date => $_getSZ(3);
  @$pb.TagNumber(4)
  set date($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearDate() => clearField(4);
}

class refAppRecomendadoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'refAppRecomendadoResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'puntos')
    ..hasRequiredFields = false
  ;

  refAppRecomendadoResponse._() : super();
  factory refAppRecomendadoResponse({
    $core.String? message,
    $core.String? puntos,
  }) {
    final result = create();
    if (message != null) {
      result.message = message;
    }
    if (puntos != null) {
      result.puntos = puntos;
    }
    return result;
  }
  factory refAppRecomendadoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory refAppRecomendadoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  refAppRecomendadoResponse clone() => refAppRecomendadoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  refAppRecomendadoResponse copyWith(void Function(refAppRecomendadoResponse) updates) => super.copyWith((message) => updates(message as refAppRecomendadoResponse)) as refAppRecomendadoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static refAppRecomendadoResponse create() => refAppRecomendadoResponse._();
  refAppRecomendadoResponse createEmptyInstance() => create();
  static $pb.PbList<refAppRecomendadoResponse> createRepeated() => $pb.PbList<refAppRecomendadoResponse>();
  @$core.pragma('dart2js:noInline')
  static refAppRecomendadoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<refAppRecomendadoResponse>(create);
  static refAppRecomendadoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  @$pb.TagNumber(8)
  $core.String get puntos => $_getSZ(1);
  @$pb.TagNumber(8)
  set puntos($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(8)
  $core.bool hasPuntos() => $_has(1);
  @$pb.TagNumber(8)
  void clearPuntos() => clearField(8);
}

class asignarPuntosRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'asignarPuntosRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionString', protoName: 'sessionString')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'configCodigo', protoName: 'configCodigo')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'date')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idRecurso', $pb.PbFieldType.O3, protoName: 'idRecurso')
    ..hasRequiredFields = false
  ;

  asignarPuntosRequest._() : super();
  factory asignarPuntosRequest({
    $core.String? sessionString,
    $core.String? configCodigo,
    $core.String? date,
    $core.int? idRecurso,
  }) {
    final result = create();
    if (sessionString != null) {
      result.sessionString = sessionString;
    }
    if (configCodigo != null) {
      result.configCodigo = configCodigo;
    }
    if (date != null) {
      result.date = date;
    }
    if (idRecurso != null) {
      result.idRecurso = idRecurso;
    }
    return result;
  }
  factory asignarPuntosRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory asignarPuntosRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  asignarPuntosRequest clone() => asignarPuntosRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  asignarPuntosRequest copyWith(void Function(asignarPuntosRequest) updates) => super.copyWith((message) => updates(message as asignarPuntosRequest)) as asignarPuntosRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static asignarPuntosRequest create() => asignarPuntosRequest._();
  asignarPuntosRequest createEmptyInstance() => create();
  static $pb.PbList<asignarPuntosRequest> createRepeated() => $pb.PbList<asignarPuntosRequest>();
  @$core.pragma('dart2js:noInline')
  static asignarPuntosRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<asignarPuntosRequest>(create);
  static asignarPuntosRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionString => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionString($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionString() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionString() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get configCodigo => $_getSZ(1);
  @$pb.TagNumber(2)
  set configCodigo($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConfigCodigo() => $_has(1);
  @$pb.TagNumber(2)
  void clearConfigCodigo() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get date => $_getSZ(2);
  @$pb.TagNumber(3)
  set date($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearDate() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get idRecurso => $_getIZ(3);
  @$pb.TagNumber(4)
  set idRecurso($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIdRecurso() => $_has(3);
  @$pb.TagNumber(4)
  void clearIdRecurso() => clearField(4);
}

class asignarPuntosResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'asignarPuntosResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'puntos')
    ..hasRequiredFields = false
  ;

  asignarPuntosResponse._() : super();
  factory asignarPuntosResponse({
    $core.String? message,
    $core.String? puntos,
  }) {
    final result = create();
    if (message != null) {
      result.message = message;
    }
    if (puntos != null) {
      result.puntos = puntos;
    }
    return result;
  }
  factory asignarPuntosResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory asignarPuntosResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  asignarPuntosResponse clone() => asignarPuntosResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  asignarPuntosResponse copyWith(void Function(asignarPuntosResponse) updates) => super.copyWith((message) => updates(message as asignarPuntosResponse)) as asignarPuntosResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static asignarPuntosResponse create() => asignarPuntosResponse._();
  asignarPuntosResponse createEmptyInstance() => create();
  static $pb.PbList<asignarPuntosResponse> createRepeated() => $pb.PbList<asignarPuntosResponse>();
  @$core.pragma('dart2js:noInline')
  static asignarPuntosResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<asignarPuntosResponse>(create);
  static asignarPuntosResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get puntos => $_getSZ(1);
  @$pb.TagNumber(2)
  set puntos($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPuntos() => $_has(1);
  @$pb.TagNumber(2)
  void clearPuntos() => clearField(2);
}

class medioPagoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'medioPagoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionString', protoName: 'sessionString')
    ..hasRequiredFields = false
  ;

  medioPagoRequest._() : super();
  factory medioPagoRequest({
    $core.String? sessionString,
  }) {
    final result = create();
    if (sessionString != null) {
      result.sessionString = sessionString;
    }
    return result;
  }
  factory medioPagoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory medioPagoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  medioPagoRequest clone() => medioPagoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  medioPagoRequest copyWith(void Function(medioPagoRequest) updates) => super.copyWith((message) => updates(message as medioPagoRequest)) as medioPagoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static medioPagoRequest create() => medioPagoRequest._();
  medioPagoRequest createEmptyInstance() => create();
  static $pb.PbList<medioPagoRequest> createRepeated() => $pb.PbList<medioPagoRequest>();
  @$core.pragma('dart2js:noInline')
  static medioPagoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<medioPagoRequest>(create);
  static medioPagoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionString => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionString($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionString() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionString() => clearField(1);
}

class medioPagoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'medioPagoResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idMedioPago', protoName: 'idMedioPago')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'medioPago', protoName: 'medioPago')
    ..hasRequiredFields = false
  ;

  medioPagoResponse._() : super();
  factory medioPagoResponse({
    $core.String? idMedioPago,
    $core.String? medioPago,
  }) {
    final result = create();
    if (idMedioPago != null) {
      result.idMedioPago = idMedioPago;
    }
    if (medioPago != null) {
      result.medioPago = medioPago;
    }
    return result;
  }
  factory medioPagoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory medioPagoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  medioPagoResponse clone() => medioPagoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  medioPagoResponse copyWith(void Function(medioPagoResponse) updates) => super.copyWith((message) => updates(message as medioPagoResponse)) as medioPagoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static medioPagoResponse create() => medioPagoResponse._();
  medioPagoResponse createEmptyInstance() => create();
  static $pb.PbList<medioPagoResponse> createRepeated() => $pb.PbList<medioPagoResponse>();
  @$core.pragma('dart2js:noInline')
  static medioPagoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<medioPagoResponse>(create);
  static medioPagoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get idMedioPago => $_getSZ(0);
  @$pb.TagNumber(1)
  set idMedioPago($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdMedioPago() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdMedioPago() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get medioPago => $_getSZ(1);
  @$pb.TagNumber(2)
  set medioPago($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMedioPago() => $_has(1);
  @$pb.TagNumber(2)
  void clearMedioPago() => clearField(2);
}

class pruebaRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pruebaRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  pruebaRequest._() : super();
  factory pruebaRequest({
    $core.String? message,
  }) {
    final result = create();
    if (message != null) {
      result.message = message;
    }
    return result;
  }
  factory pruebaRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory pruebaRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  pruebaRequest clone() => pruebaRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  pruebaRequest copyWith(void Function(pruebaRequest) updates) => super.copyWith((message) => updates(message as pruebaRequest)) as pruebaRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static pruebaRequest create() => pruebaRequest._();
  pruebaRequest createEmptyInstance() => create();
  static $pb.PbList<pruebaRequest> createRepeated() => $pb.PbList<pruebaRequest>();
  @$core.pragma('dart2js:noInline')
  static pruebaRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<pruebaRequest>(create);
  static pruebaRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class pruebaResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pruebaResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  pruebaResponse._() : super();
  factory pruebaResponse({
    $core.String? message,
  }) {
    final result = create();
    if (message != null) {
      result.message = message;
    }
    return result;
  }
  factory pruebaResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory pruebaResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  pruebaResponse clone() => pruebaResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  pruebaResponse copyWith(void Function(pruebaResponse) updates) => super.copyWith((message) => updates(message as pruebaResponse)) as pruebaResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static pruebaResponse create() => pruebaResponse._();
  pruebaResponse createEmptyInstance() => create();
  static $pb.PbList<pruebaResponse> createRepeated() => $pb.PbList<pruebaResponse>();
  @$core.pragma('dart2js:noInline')
  static pruebaResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<pruebaResponse>(create);
  static pruebaResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class recursosRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'recursosRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idComponente', $pb.PbFieldType.O3, protoName: 'idComponente')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionString', protoName: 'sessionString')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idreferente', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  recursosRequest._() : super();
  factory recursosRequest({
    $core.int? idComponente,
    $core.String? sessionString,
    $core.int? idreferente,
  }) {
    final result = create();
    if (idComponente != null) {
      result.idComponente = idComponente;
    }
    if (sessionString != null) {
      result.sessionString = sessionString;
    }
    if (idreferente != null) {
      result.idreferente = idreferente;
    }
    return result;
  }
  factory recursosRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory recursosRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  recursosRequest clone() => recursosRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  recursosRequest copyWith(void Function(recursosRequest) updates) => super.copyWith((message) => updates(message as recursosRequest)) as recursosRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static recursosRequest create() => recursosRequest._();
  recursosRequest createEmptyInstance() => create();
  static $pb.PbList<recursosRequest> createRepeated() => $pb.PbList<recursosRequest>();
  @$core.pragma('dart2js:noInline')
  static recursosRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<recursosRequest>(create);
  static recursosRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idComponente => $_getIZ(0);
  @$pb.TagNumber(1)
  set idComponente($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdComponente() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdComponente() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sessionString => $_getSZ(1);
  @$pb.TagNumber(2)
  set sessionString($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSessionString() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionString() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get idreferente => $_getIZ(2);
  @$pb.TagNumber(3)
  set idreferente($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIdreferente() => $_has(2);
  @$pb.TagNumber(3)
  void clearIdreferente() => clearField(3);
}

class recursosResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'recursosResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idRecurso', $pb.PbFieldType.O3, protoName: 'idRecurso')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idComponente', $pb.PbFieldType.O3, protoName: 'idComponente')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'estado', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'path')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cantidad', $pb.PbFieldType.O3)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'configCodigo', protoName: 'configCodigo')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tipoRecurso', protoName: 'tipoRecurso')
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hideOnShared', protoName: 'hideOnShared')
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'compartido', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  recursosResponse._() : super();
  factory recursosResponse({
    $core.int? idRecurso,
    $core.int? idComponente,
    $core.int? estado,
    $core.String? path,
    $core.int? cantidad,
    $core.String? configCodigo,
    $core.String? tipoRecurso,
    $core.bool? hideOnShared,
    $core.int? compartido,
  }) {
    final result = create();
    if (idRecurso != null) {
      result.idRecurso = idRecurso;
    }
    if (idComponente != null) {
      result.idComponente = idComponente;
    }
    if (estado != null) {
      result.estado = estado;
    }
    if (path != null) {
      result.path = path;
    }
    if (cantidad != null) {
      result.cantidad = cantidad;
    }
    if (configCodigo != null) {
      result.configCodigo = configCodigo;
    }
    if (tipoRecurso != null) {
      result.tipoRecurso = tipoRecurso;
    }
    if (hideOnShared != null) {
      result.hideOnShared = hideOnShared;
    }
    if (compartido != null) {
      result.compartido = compartido;
    }
    return result;
  }
  factory recursosResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory recursosResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  recursosResponse clone() => recursosResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  recursosResponse copyWith(void Function(recursosResponse) updates) => super.copyWith((message) => updates(message as recursosResponse)) as recursosResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static recursosResponse create() => recursosResponse._();
  recursosResponse createEmptyInstance() => create();
  static $pb.PbList<recursosResponse> createRepeated() => $pb.PbList<recursosResponse>();
  @$core.pragma('dart2js:noInline')
  static recursosResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<recursosResponse>(create);
  static recursosResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idRecurso => $_getIZ(0);
  @$pb.TagNumber(1)
  set idRecurso($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdRecurso() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdRecurso() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get idComponente => $_getIZ(1);
  @$pb.TagNumber(2)
  set idComponente($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdComponente() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdComponente() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get estado => $_getIZ(2);
  @$pb.TagNumber(3)
  set estado($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEstado() => $_has(2);
  @$pb.TagNumber(3)
  void clearEstado() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get path => $_getSZ(3);
  @$pb.TagNumber(4)
  set path($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPath() => $_has(3);
  @$pb.TagNumber(4)
  void clearPath() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get cantidad => $_getIZ(4);
  @$pb.TagNumber(5)
  set cantidad($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCantidad() => $_has(4);
  @$pb.TagNumber(5)
  void clearCantidad() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get configCodigo => $_getSZ(5);
  @$pb.TagNumber(6)
  set configCodigo($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasConfigCodigo() => $_has(5);
  @$pb.TagNumber(6)
  void clearConfigCodigo() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get tipoRecurso => $_getSZ(6);
  @$pb.TagNumber(7)
  set tipoRecurso($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTipoRecurso() => $_has(6);
  @$pb.TagNumber(7)
  void clearTipoRecurso() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get hideOnShared => $_getBF(7);
  @$pb.TagNumber(8)
  set hideOnShared($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasHideOnShared() => $_has(7);
  @$pb.TagNumber(8)
  void clearHideOnShared() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get compartido => $_getIZ(8);
  @$pb.TagNumber(9)
  set compartido($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCompartido() => $_has(8);
  @$pb.TagNumber(9)
  void clearCompartido() => clearField(9);
}

class mensajeContactosRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mensajeContactosRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionString', protoName: 'sessionString')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nombreContacto', protoName: 'nombreContacto')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numeroTelefono', protoName: 'numeroTelefono')
    ..hasRequiredFields = false
  ;

  mensajeContactosRequest._() : super();
  factory mensajeContactosRequest({
    $core.String? sessionString,
    $core.String? nombreContacto,
    $core.String? numeroTelefono,
  }) {
    final result = create();
    if (sessionString != null) {
      result.sessionString = sessionString;
    }
    if (nombreContacto != null) {
      result.nombreContacto = nombreContacto;
    }
    if (numeroTelefono != null) {
      result.numeroTelefono = numeroTelefono;
    }
    return result;
  }
  factory mensajeContactosRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory mensajeContactosRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  mensajeContactosRequest clone() => mensajeContactosRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  mensajeContactosRequest copyWith(void Function(mensajeContactosRequest) updates) => super.copyWith((message) => updates(message as mensajeContactosRequest)) as mensajeContactosRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static mensajeContactosRequest create() => mensajeContactosRequest._();
  mensajeContactosRequest createEmptyInstance() => create();
  static $pb.PbList<mensajeContactosRequest> createRepeated() => $pb.PbList<mensajeContactosRequest>();
  @$core.pragma('dart2js:noInline')
  static mensajeContactosRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<mensajeContactosRequest>(create);
  static mensajeContactosRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionString => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionString($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionString() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionString() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nombreContacto => $_getSZ(1);
  @$pb.TagNumber(2)
  set nombreContacto($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNombreContacto() => $_has(1);
  @$pb.TagNumber(2)
  void clearNombreContacto() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get numeroTelefono => $_getSZ(2);
  @$pb.TagNumber(3)
  set numeroTelefono($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumeroTelefono() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumeroTelefono() => clearField(3);
}

class mensajeContactosResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mensajeContactosResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mensaje')
    ..hasRequiredFields = false
  ;

  mensajeContactosResponse._() : super();
  factory mensajeContactosResponse({
    $core.String? mensaje,
  }) {
    final result = create();
    if (mensaje != null) {
      result.mensaje = mensaje;
    }
    return result;
  }
  factory mensajeContactosResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory mensajeContactosResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  mensajeContactosResponse clone() => mensajeContactosResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  mensajeContactosResponse copyWith(void Function(mensajeContactosResponse) updates) => super.copyWith((message) => updates(message as mensajeContactosResponse)) as mensajeContactosResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static mensajeContactosResponse create() => mensajeContactosResponse._();
  mensajeContactosResponse createEmptyInstance() => create();
  static $pb.PbList<mensajeContactosResponse> createRepeated() => $pb.PbList<mensajeContactosResponse>();
  @$core.pragma('dart2js:noInline')
  static mensajeContactosResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<mensajeContactosResponse>(create);
  static mensajeContactosResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mensaje => $_getSZ(0);
  @$pb.TagNumber(1)
  set mensaje($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMensaje() => $_has(0);
  @$pb.TagNumber(1)
  void clearMensaje() => clearField(1);
}

class subProductosRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'subProductosRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionString', protoName: 'sessionString')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idProducto', protoName: 'idProducto')
    ..hasRequiredFields = false
  ;

  subProductosRequest._() : super();
  factory subProductosRequest({
    $core.String? sessionString,
    $core.String? idProducto,
  }) {
    final result = create();
    if (sessionString != null) {
      result.sessionString = sessionString;
    }
    if (idProducto != null) {
      result.idProducto = idProducto;
    }
    return result;
  }
  factory subProductosRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory subProductosRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  subProductosRequest clone() => subProductosRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  subProductosRequest copyWith(void Function(subProductosRequest) updates) => super.copyWith((message) => updates(message as subProductosRequest)) as subProductosRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static subProductosRequest create() => subProductosRequest._();
  subProductosRequest createEmptyInstance() => create();
  static $pb.PbList<subProductosRequest> createRepeated() => $pb.PbList<subProductosRequest>();
  @$core.pragma('dart2js:noInline')
  static subProductosRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<subProductosRequest>(create);
  static subProductosRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionString => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionString($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionString() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionString() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get idProducto => $_getSZ(1);
  @$pb.TagNumber(2)
  set idProducto($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdProducto() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdProducto() => clearField(2);
}

class subProductosResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'subProductosResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idSubproducto', $pb.PbFieldType.O3, protoName: 'idSubproducto')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idProducto', $pb.PbFieldType.O3, protoName: 'idProducto')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nombreSubpr', protoName: 'nombreSubpr')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idConfigPuntos', $pb.PbFieldType.O3, protoName: 'idConfigPuntos')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pathImagen', protoName: 'pathImagen')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'configCodigo', protoName: 'configCodigo')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cantidad', $pb.PbFieldType.O3)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amarillo', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  subProductosResponse._() : super();
  factory subProductosResponse({
    $core.int? idSubproducto,
    $core.int? idProducto,
    $core.String? nombreSubpr,
    $core.int? idConfigPuntos,
    $core.String? pathImagen,
    $core.String? configCodigo,
    $core.int? cantidad,
    $core.int? amarillo,
  }) {
    final result = create();
    if (idSubproducto != null) {
      result.idSubproducto = idSubproducto;
    }
    if (idProducto != null) {
      result.idProducto = idProducto;
    }
    if (nombreSubpr != null) {
      result.nombreSubpr = nombreSubpr;
    }
    if (idConfigPuntos != null) {
      result.idConfigPuntos = idConfigPuntos;
    }
    if (pathImagen != null) {
      result.pathImagen = pathImagen;
    }
    if (configCodigo != null) {
      result.configCodigo = configCodigo;
    }
    if (cantidad != null) {
      result.cantidad = cantidad;
    }
    if (amarillo != null) {
      result.amarillo = amarillo;
    }
    return result;
  }
  factory subProductosResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory subProductosResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  subProductosResponse clone() => subProductosResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  subProductosResponse copyWith(void Function(subProductosResponse) updates) => super.copyWith((message) => updates(message as subProductosResponse)) as subProductosResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static subProductosResponse create() => subProductosResponse._();
  subProductosResponse createEmptyInstance() => create();
  static $pb.PbList<subProductosResponse> createRepeated() => $pb.PbList<subProductosResponse>();
  @$core.pragma('dart2js:noInline')
  static subProductosResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<subProductosResponse>(create);
  static subProductosResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idSubproducto => $_getIZ(0);
  @$pb.TagNumber(1)
  set idSubproducto($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdSubproducto() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdSubproducto() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get idProducto => $_getIZ(1);
  @$pb.TagNumber(2)
  set idProducto($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdProducto() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdProducto() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get nombreSubpr => $_getSZ(2);
  @$pb.TagNumber(3)
  set nombreSubpr($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNombreSubpr() => $_has(2);
  @$pb.TagNumber(3)
  void clearNombreSubpr() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get idConfigPuntos => $_getIZ(3);
  @$pb.TagNumber(4)
  set idConfigPuntos($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIdConfigPuntos() => $_has(3);
  @$pb.TagNumber(4)
  void clearIdConfigPuntos() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get pathImagen => $_getSZ(4);
  @$pb.TagNumber(5)
  set pathImagen($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPathImagen() => $_has(4);
  @$pb.TagNumber(5)
  void clearPathImagen() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get configCodigo => $_getSZ(5);
  @$pb.TagNumber(6)
  set configCodigo($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasConfigCodigo() => $_has(5);
  @$pb.TagNumber(6)
  void clearConfigCodigo() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get cantidad => $_getIZ(6);
  @$pb.TagNumber(7)
  set cantidad($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCantidad() => $_has(6);
  @$pb.TagNumber(7)
  void clearCantidad() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get amarillo => $_getIZ(7);
  @$pb.TagNumber(8)
  set amarillo($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAmarillo() => $_has(7);
  @$pb.TagNumber(8)
  void clearAmarillo() => clearField(8);
}

class subProductoByIdRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'subProductoByIdRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionString', protoName: 'sessionString')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idSubproducto', protoName: 'idSubproducto')
    ..hasRequiredFields = false
  ;

  subProductoByIdRequest._() : super();
  factory subProductoByIdRequest({
    $core.String? sessionString,
    $core.String? idSubproducto,
  }) {
    final result = create();
    if (sessionString != null) {
      result.sessionString = sessionString;
    }
    if (idSubproducto != null) {
      result.idSubproducto = idSubproducto;
    }
    return result;
  }
  factory subProductoByIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory subProductoByIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  subProductoByIdRequest clone() => subProductoByIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  subProductoByIdRequest copyWith(void Function(subProductoByIdRequest) updates) => super.copyWith((message) => updates(message as subProductoByIdRequest)) as subProductoByIdRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static subProductoByIdRequest create() => subProductoByIdRequest._();
  subProductoByIdRequest createEmptyInstance() => create();
  static $pb.PbList<subProductoByIdRequest> createRepeated() => $pb.PbList<subProductoByIdRequest>();
  @$core.pragma('dart2js:noInline')
  static subProductoByIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<subProductoByIdRequest>(create);
  static subProductoByIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionString => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionString($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionString() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionString() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get idSubproducto => $_getSZ(1);
  @$pb.TagNumber(2)
  set idSubproducto($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdSubproducto() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdSubproducto() => clearField(2);
}

class subProductoByIdResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'subProductoByIdResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idSubproducto', $pb.PbFieldType.O3, protoName: 'idSubproducto')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idProducto', $pb.PbFieldType.O3, protoName: 'idProducto')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nombreSubpr', protoName: 'nombreSubpr')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idConfigPuntos', $pb.PbFieldType.O3, protoName: 'idConfigPuntos')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pathImagen', protoName: 'pathImagen')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'configCodigo', protoName: 'configCodigo')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cantidad', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  subProductoByIdResponse._() : super();
  factory subProductoByIdResponse({
    $core.int? idSubproducto,
    $core.int? idProducto,
    $core.String? nombreSubpr,
    $core.int? idConfigPuntos,
    $core.String? pathImagen,
    $core.String? configCodigo,
    $core.int? cantidad,
  }) {
    final result = create();
    if (idSubproducto != null) {
      result.idSubproducto = idSubproducto;
    }
    if (idProducto != null) {
      result.idProducto = idProducto;
    }
    if (nombreSubpr != null) {
      result.nombreSubpr = nombreSubpr;
    }
    if (idConfigPuntos != null) {
      result.idConfigPuntos = idConfigPuntos;
    }
    if (pathImagen != null) {
      result.pathImagen = pathImagen;
    }
    if (configCodigo != null) {
      result.configCodigo = configCodigo;
    }
    if (cantidad != null) {
      result.cantidad = cantidad;
    }
    return result;
  }
  factory subProductoByIdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory subProductoByIdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  subProductoByIdResponse clone() => subProductoByIdResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  subProductoByIdResponse copyWith(void Function(subProductoByIdResponse) updates) => super.copyWith((message) => updates(message as subProductoByIdResponse)) as subProductoByIdResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static subProductoByIdResponse create() => subProductoByIdResponse._();
  subProductoByIdResponse createEmptyInstance() => create();
  static $pb.PbList<subProductoByIdResponse> createRepeated() => $pb.PbList<subProductoByIdResponse>();
  @$core.pragma('dart2js:noInline')
  static subProductoByIdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<subProductoByIdResponse>(create);
  static subProductoByIdResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idSubproducto => $_getIZ(0);
  @$pb.TagNumber(1)
  set idSubproducto($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdSubproducto() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdSubproducto() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get idProducto => $_getIZ(1);
  @$pb.TagNumber(2)
  set idProducto($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdProducto() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdProducto() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get nombreSubpr => $_getSZ(2);
  @$pb.TagNumber(3)
  set nombreSubpr($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNombreSubpr() => $_has(2);
  @$pb.TagNumber(3)
  void clearNombreSubpr() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get idConfigPuntos => $_getIZ(3);
  @$pb.TagNumber(4)
  set idConfigPuntos($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIdConfigPuntos() => $_has(3);
  @$pb.TagNumber(4)
  void clearIdConfigPuntos() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get pathImagen => $_getSZ(4);
  @$pb.TagNumber(5)
  set pathImagen($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPathImagen() => $_has(4);
  @$pb.TagNumber(5)
  void clearPathImagen() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get configCodigo => $_getSZ(5);
  @$pb.TagNumber(6)
  set configCodigo($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasConfigCodigo() => $_has(5);
  @$pb.TagNumber(6)
  void clearConfigCodigo() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get cantidad => $_getIZ(6);
  @$pb.TagNumber(7)
  set cantidad($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCantidad() => $_has(6);
  @$pb.TagNumber(7)
  void clearCantidad() => clearField(7);
}

class saveRefSubproductoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'saveRefSubproductoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionString', protoName: 'sessionString')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idSubproducto', protoName: 'idSubproducto')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nombreApellido', protoName: 'nombreApellido')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numeroTelefono', protoName: 'numeroTelefono')
    ..hasRequiredFields = false
  ;

  saveRefSubproductoRequest._() : super();
  factory saveRefSubproductoRequest({
    $core.String? sessionString,
    $core.String? idSubproducto,
    $core.String? nombreApellido,
    $core.String? numeroTelefono,
  }) {
    final result = create();
    if (sessionString != null) {
      result.sessionString = sessionString;
    }
    if (idSubproducto != null) {
      result.idSubproducto = idSubproducto;
    }
    if (nombreApellido != null) {
      result.nombreApellido = nombreApellido;
    }
    if (numeroTelefono != null) {
      result.numeroTelefono = numeroTelefono;
    }
    return result;
  }
  factory saveRefSubproductoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory saveRefSubproductoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  saveRefSubproductoRequest clone() => saveRefSubproductoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  saveRefSubproductoRequest copyWith(void Function(saveRefSubproductoRequest) updates) => super.copyWith((message) => updates(message as saveRefSubproductoRequest)) as saveRefSubproductoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static saveRefSubproductoRequest create() => saveRefSubproductoRequest._();
  saveRefSubproductoRequest createEmptyInstance() => create();
  static $pb.PbList<saveRefSubproductoRequest> createRepeated() => $pb.PbList<saveRefSubproductoRequest>();
  @$core.pragma('dart2js:noInline')
  static saveRefSubproductoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<saveRefSubproductoRequest>(create);
  static saveRefSubproductoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionString => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionString($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionString() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionString() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get idSubproducto => $_getSZ(1);
  @$pb.TagNumber(2)
  set idSubproducto($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdSubproducto() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdSubproducto() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get nombreApellido => $_getSZ(2);
  @$pb.TagNumber(3)
  set nombreApellido($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNombreApellido() => $_has(2);
  @$pb.TagNumber(3)
  void clearNombreApellido() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get numeroTelefono => $_getSZ(3);
  @$pb.TagNumber(4)
  set numeroTelefono($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNumeroTelefono() => $_has(3);
  @$pb.TagNumber(4)
  void clearNumeroTelefono() => clearField(4);
}

class saveRefSubproductoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'saveRefSubproductoResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mensaje')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'puntos')
    ..hasRequiredFields = false
  ;

  saveRefSubproductoResponse._() : super();
  factory saveRefSubproductoResponse({
    $core.String? mensaje,
    $core.String? puntos,
  }) {
    final result = create();
    if (mensaje != null) {
      result.mensaje = mensaje;
    }
    if (puntos != null) {
      result.puntos = puntos;
    }
    return result;
  }
  factory saveRefSubproductoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory saveRefSubproductoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  saveRefSubproductoResponse clone() => saveRefSubproductoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  saveRefSubproductoResponse copyWith(void Function(saveRefSubproductoResponse) updates) => super.copyWith((message) => updates(message as saveRefSubproductoResponse)) as saveRefSubproductoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static saveRefSubproductoResponse create() => saveRefSubproductoResponse._();
  saveRefSubproductoResponse createEmptyInstance() => create();
  static $pb.PbList<saveRefSubproductoResponse> createRepeated() => $pb.PbList<saveRefSubproductoResponse>();
  @$core.pragma('dart2js:noInline')
  static saveRefSubproductoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<saveRefSubproductoResponse>(create);
  static saveRefSubproductoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mensaje => $_getSZ(0);
  @$pb.TagNumber(1)
  set mensaje($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMensaje() => $_has(0);
  @$pb.TagNumber(1)
  void clearMensaje() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get puntos => $_getSZ(1);
  @$pb.TagNumber(2)
  set puntos($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPuntos() => $_has(1);
  @$pb.TagNumber(2)
  void clearPuntos() => clearField(2);
}

class productoByIdRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'productoByIdRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionString', protoName: 'sessionString')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idProducto', $pb.PbFieldType.O3, protoName: 'idProducto')
    ..hasRequiredFields = false
  ;

  productoByIdRequest._() : super();
  factory productoByIdRequest({
    $core.String? sessionString,
    $core.int? idProducto,
  }) {
    final result = create();
    if (sessionString != null) {
      result.sessionString = sessionString;
    }
    if (idProducto != null) {
      result.idProducto = idProducto;
    }
    return result;
  }
  factory productoByIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory productoByIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  productoByIdRequest clone() => productoByIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  productoByIdRequest copyWith(void Function(productoByIdRequest) updates) => super.copyWith((message) => updates(message as productoByIdRequest)) as productoByIdRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static productoByIdRequest create() => productoByIdRequest._();
  productoByIdRequest createEmptyInstance() => create();
  static $pb.PbList<productoByIdRequest> createRepeated() => $pb.PbList<productoByIdRequest>();
  @$core.pragma('dart2js:noInline')
  static productoByIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<productoByIdRequest>(create);
  static productoByIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionString => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionString($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionString() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionString() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get idProducto => $_getIZ(1);
  @$pb.TagNumber(2)
  set idProducto($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdProducto() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdProducto() => clearField(2);
}

class productoByIdResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'productoByIdResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idProducto', $pb.PbFieldType.O3, protoName: 'idProducto')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nombreProducto', protoName: 'nombreProducto')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imagenProducto', protoName: 'imagenProducto')
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'aliados')
    ..hasRequiredFields = false
  ;

  productoByIdResponse._() : super();
  factory productoByIdResponse({
    $core.int? idProducto,
    $core.String? nombreProducto,
    $core.String? imagenProducto,
    $core.Iterable<$core.String>? aliados,
  }) {
    final result = create();
    if (idProducto != null) {
      result.idProducto = idProducto;
    }
    if (nombreProducto != null) {
      result.nombreProducto = nombreProducto;
    }
    if (imagenProducto != null) {
      result.imagenProducto = imagenProducto;
    }
    if (aliados != null) {
      result.aliados.addAll(aliados);
    }
    return result;
  }
  factory productoByIdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory productoByIdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  productoByIdResponse clone() => productoByIdResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  productoByIdResponse copyWith(void Function(productoByIdResponse) updates) => super.copyWith((message) => updates(message as productoByIdResponse)) as productoByIdResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static productoByIdResponse create() => productoByIdResponse._();
  productoByIdResponse createEmptyInstance() => create();
  static $pb.PbList<productoByIdResponse> createRepeated() => $pb.PbList<productoByIdResponse>();
  @$core.pragma('dart2js:noInline')
  static productoByIdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<productoByIdResponse>(create);
  static productoByIdResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idProducto => $_getIZ(0);
  @$pb.TagNumber(1)
  set idProducto($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdProducto() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdProducto() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nombreProducto => $_getSZ(1);
  @$pb.TagNumber(2)
  set nombreProducto($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNombreProducto() => $_has(1);
  @$pb.TagNumber(2)
  void clearNombreProducto() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get imagenProducto => $_getSZ(2);
  @$pb.TagNumber(3)
  set imagenProducto($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasImagenProducto() => $_has(2);
  @$pb.TagNumber(3)
  void clearImagenProducto() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get aliados => $_getList(3);
}

class getMensajeContactosRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'getMensajeContactosRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionString', protoName: 'sessionString')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageKey', protoName: 'pageKey')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'term')
    ..hasRequiredFields = false
  ;

  getMensajeContactosRequest._() : super();
  factory getMensajeContactosRequest({
    $core.String? sessionString,
    $core.String? pageKey,
    $core.String? term,
  }) {
    final result = create();
    if (sessionString != null) {
      result.sessionString = sessionString;
    }
    if (pageKey != null) {
      result.pageKey = pageKey;
    }
    if (term != null) {
      result.term = term;
    }
    return result;
  }
  factory getMensajeContactosRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory getMensajeContactosRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  getMensajeContactosRequest clone() => getMensajeContactosRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  getMensajeContactosRequest copyWith(void Function(getMensajeContactosRequest) updates) => super.copyWith((message) => updates(message as getMensajeContactosRequest)) as getMensajeContactosRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static getMensajeContactosRequest create() => getMensajeContactosRequest._();
  getMensajeContactosRequest createEmptyInstance() => create();
  static $pb.PbList<getMensajeContactosRequest> createRepeated() => $pb.PbList<getMensajeContactosRequest>();
  @$core.pragma('dart2js:noInline')
  static getMensajeContactosRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<getMensajeContactosRequest>(create);
  static getMensajeContactosRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionString => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionString($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionString() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionString() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pageKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set pageKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get term => $_getSZ(2);
  @$pb.TagNumber(3)
  set term($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTerm() => $_has(2);
  @$pb.TagNumber(3)
  void clearTerm() => clearField(3);
}

class mensajeContacto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mensajeContacto', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idMensContacto', $pb.PbFieldType.O3, protoName: 'idMensContacto')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nombreContacto', protoName: 'nombreContacto')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numeroTelefono', protoName: 'numeroTelefono')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fechaHoraRegistro', $pb.PbFieldType.O3, protoName: 'fechaHoraRegistro')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fechaHoraEnviado', $pb.PbFieldType.O3, protoName: 'fechaHoraEnviado')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'estado', $pb.PbFieldType.O3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idreferente', $pb.PbFieldType.O3)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'puntosGanados', $pb.PbFieldType.O3, protoName: 'puntosGanados')
    ..hasRequiredFields = false
  ;

  mensajeContacto._() : super();
  factory mensajeContacto({
    $core.int? idMensContacto,
    $core.String? nombreContacto,
    $core.String? numeroTelefono,
    $core.int? fechaHoraRegistro,
    $core.int? fechaHoraEnviado,
    $core.int? estado,
    $core.int? idreferente,
    $core.int? puntosGanados,
  }) {
    final result = create();
    if (idMensContacto != null) {
      result.idMensContacto = idMensContacto;
    }
    if (nombreContacto != null) {
      result.nombreContacto = nombreContacto;
    }
    if (numeroTelefono != null) {
      result.numeroTelefono = numeroTelefono;
    }
    if (fechaHoraRegistro != null) {
      result.fechaHoraRegistro = fechaHoraRegistro;
    }
    if (fechaHoraEnviado != null) {
      result.fechaHoraEnviado = fechaHoraEnviado;
    }
    if (estado != null) {
      result.estado = estado;
    }
    if (idreferente != null) {
      result.idreferente = idreferente;
    }
    if (puntosGanados != null) {
      result.puntosGanados = puntosGanados;
    }
    return result;
  }
  factory mensajeContacto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory mensajeContacto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  mensajeContacto clone() => mensajeContacto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  mensajeContacto copyWith(void Function(mensajeContacto) updates) => super.copyWith((message) => updates(message as mensajeContacto)) as mensajeContacto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static mensajeContacto create() => mensajeContacto._();
  mensajeContacto createEmptyInstance() => create();
  static $pb.PbList<mensajeContacto> createRepeated() => $pb.PbList<mensajeContacto>();
  @$core.pragma('dart2js:noInline')
  static mensajeContacto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<mensajeContacto>(create);
  static mensajeContacto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idMensContacto => $_getIZ(0);
  @$pb.TagNumber(1)
  set idMensContacto($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdMensContacto() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdMensContacto() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nombreContacto => $_getSZ(1);
  @$pb.TagNumber(2)
  set nombreContacto($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNombreContacto() => $_has(1);
  @$pb.TagNumber(2)
  void clearNombreContacto() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get numeroTelefono => $_getSZ(2);
  @$pb.TagNumber(3)
  set numeroTelefono($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumeroTelefono() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumeroTelefono() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get fechaHoraRegistro => $_getIZ(3);
  @$pb.TagNumber(4)
  set fechaHoraRegistro($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFechaHoraRegistro() => $_has(3);
  @$pb.TagNumber(4)
  void clearFechaHoraRegistro() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get fechaHoraEnviado => $_getIZ(4);
  @$pb.TagNumber(5)
  set fechaHoraEnviado($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFechaHoraEnviado() => $_has(4);
  @$pb.TagNumber(5)
  void clearFechaHoraEnviado() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get estado => $_getIZ(5);
  @$pb.TagNumber(6)
  set estado($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEstado() => $_has(5);
  @$pb.TagNumber(6)
  void clearEstado() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get idreferente => $_getIZ(6);
  @$pb.TagNumber(7)
  set idreferente($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIdreferente() => $_has(6);
  @$pb.TagNumber(7)
  void clearIdreferente() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get puntosGanados => $_getIZ(7);
  @$pb.TagNumber(8)
  set puntosGanados($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPuntosGanados() => $_has(7);
  @$pb.TagNumber(8)
  void clearPuntosGanados() => clearField(8);
}

class getMensajeContactosResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'getMensajeContactosResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..pc<mensajeContacto>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.PM, subBuilder: mensajeContacto.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nextPageToken')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sizePage', $pb.PbFieldType.O3, protoName: 'sizePage')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'more')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'puntosGanados', $pb.PbFieldType.O3, protoName: 'puntosGanados')
    ..hasRequiredFields = false
  ;

  getMensajeContactosResponse._() : super();
  factory getMensajeContactosResponse({
    $core.Iterable<mensajeContacto>? data,
    $core.String? nextPageToken,
    $core.int? sizePage,
    $core.bool? more,
    $core.int? puntosGanados,
  }) {
    final result = create();
    if (data != null) {
      result.data.addAll(data);
    }
    if (nextPageToken != null) {
      result.nextPageToken = nextPageToken;
    }
    if (sizePage != null) {
      result.sizePage = sizePage;
    }
    if (more != null) {
      result.more = more;
    }
    if (puntosGanados != null) {
      result.puntosGanados = puntosGanados;
    }
    return result;
  }
  factory getMensajeContactosResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory getMensajeContactosResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  getMensajeContactosResponse clone() => getMensajeContactosResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  getMensajeContactosResponse copyWith(void Function(getMensajeContactosResponse) updates) => super.copyWith((message) => updates(message as getMensajeContactosResponse)) as getMensajeContactosResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static getMensajeContactosResponse create() => getMensajeContactosResponse._();
  getMensajeContactosResponse createEmptyInstance() => create();
  static $pb.PbList<getMensajeContactosResponse> createRepeated() => $pb.PbList<getMensajeContactosResponse>();
  @$core.pragma('dart2js:noInline')
  static getMensajeContactosResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<getMensajeContactosResponse>(create);
  static getMensajeContactosResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<mensajeContacto> get data => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get nextPageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextPageToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNextPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextPageToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get sizePage => $_getIZ(2);
  @$pb.TagNumber(3)
  set sizePage($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSizePage() => $_has(2);
  @$pb.TagNumber(3)
  void clearSizePage() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get more => $_getBF(3);
  @$pb.TagNumber(4)
  set more($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMore() => $_has(3);
  @$pb.TagNumber(4)
  void clearMore() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get puntosGanados => $_getIZ(4);
  @$pb.TagNumber(5)
  set puntosGanados($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPuntosGanados() => $_has(4);
  @$pb.TagNumber(5)
  void clearPuntosGanados() => clearField(5);
}

class getReferenciasSubprRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'getReferenciasSubprRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionString', protoName: 'sessionString')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageKey', protoName: 'pageKey')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'term')
    ..hasRequiredFields = false
  ;

  getReferenciasSubprRequest._() : super();
  factory getReferenciasSubprRequest({
    $core.String? sessionString,
    $core.String? pageKey,
    $core.String? term,
  }) {
    final result = create();
    if (sessionString != null) {
      result.sessionString = sessionString;
    }
    if (pageKey != null) {
      result.pageKey = pageKey;
    }
    if (term != null) {
      result.term = term;
    }
    return result;
  }
  factory getReferenciasSubprRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory getReferenciasSubprRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  getReferenciasSubprRequest clone() => getReferenciasSubprRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  getReferenciasSubprRequest copyWith(void Function(getReferenciasSubprRequest) updates) => super.copyWith((message) => updates(message as getReferenciasSubprRequest)) as getReferenciasSubprRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static getReferenciasSubprRequest create() => getReferenciasSubprRequest._();
  getReferenciasSubprRequest createEmptyInstance() => create();
  static $pb.PbList<getReferenciasSubprRequest> createRepeated() => $pb.PbList<getReferenciasSubprRequest>();
  @$core.pragma('dart2js:noInline')
  static getReferenciasSubprRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<getReferenciasSubprRequest>(create);
  static getReferenciasSubprRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionString => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionString($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionString() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionString() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pageKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set pageKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get term => $_getSZ(2);
  @$pb.TagNumber(3)
  set term($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTerm() => $_has(2);
  @$pb.TagNumber(3)
  void clearTerm() => clearField(3);
}

class referenciaSubproducto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'referenciaSubproducto', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idReferencia', $pb.PbFieldType.O3, protoName: 'idReferencia')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idSubproducto', $pb.PbFieldType.O3, protoName: 'idSubproducto')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fechaHoraRegistro', $pb.PbFieldType.O3, protoName: 'fechaHoraRegistro')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'estadoReferencia', $pb.PbFieldType.O3, protoName: 'estadoReferencia')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numeroTelefono', protoName: 'numeroTelefono')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nombreApellido', protoName: 'nombreApellido')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idreferente', $pb.PbFieldType.O3)
    ..a<$core.double>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'monto', $pb.PbFieldType.OD)
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nombreEntidad', protoName: 'nombreEntidad')
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fechaCierre', $pb.PbFieldType.O3, protoName: 'fechaCierre')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'observaciones')
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'puntosGanados', $pb.PbFieldType.O3, protoName: 'puntosGanados')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nombreSubpr', protoName: 'nombreSubpr')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nombreProducto', protoName: 'nombreProducto')
    ..hasRequiredFields = false
  ;

  referenciaSubproducto._() : super();
  factory referenciaSubproducto({
    $core.int? idReferencia,
    $core.int? idSubproducto,
    $core.int? fechaHoraRegistro,
    $core.int? estadoReferencia,
    $core.String? numeroTelefono,
    $core.String? nombreApellido,
    $core.int? idreferente,
    $core.double? monto,
    $core.String? nombreEntidad,
    $core.int? fechaCierre,
    $core.String? observaciones,
    $core.int? puntosGanados,
    $core.String? nombreSubpr,
    $core.String? nombreProducto,
  }) {
    final result = create();
    if (idReferencia != null) {
      result.idReferencia = idReferencia;
    }
    if (idSubproducto != null) {
      result.idSubproducto = idSubproducto;
    }
    if (fechaHoraRegistro != null) {
      result.fechaHoraRegistro = fechaHoraRegistro;
    }
    if (estadoReferencia != null) {
      result.estadoReferencia = estadoReferencia;
    }
    if (numeroTelefono != null) {
      result.numeroTelefono = numeroTelefono;
    }
    if (nombreApellido != null) {
      result.nombreApellido = nombreApellido;
    }
    if (idreferente != null) {
      result.idreferente = idreferente;
    }
    if (monto != null) {
      result.monto = monto;
    }
    if (nombreEntidad != null) {
      result.nombreEntidad = nombreEntidad;
    }
    if (fechaCierre != null) {
      result.fechaCierre = fechaCierre;
    }
    if (observaciones != null) {
      result.observaciones = observaciones;
    }
    if (puntosGanados != null) {
      result.puntosGanados = puntosGanados;
    }
    if (nombreSubpr != null) {
      result.nombreSubpr = nombreSubpr;
    }
    if (nombreProducto != null) {
      result.nombreProducto = nombreProducto;
    }
    return result;
  }
  factory referenciaSubproducto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory referenciaSubproducto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  referenciaSubproducto clone() => referenciaSubproducto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  referenciaSubproducto copyWith(void Function(referenciaSubproducto) updates) => super.copyWith((message) => updates(message as referenciaSubproducto)) as referenciaSubproducto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static referenciaSubproducto create() => referenciaSubproducto._();
  referenciaSubproducto createEmptyInstance() => create();
  static $pb.PbList<referenciaSubproducto> createRepeated() => $pb.PbList<referenciaSubproducto>();
  @$core.pragma('dart2js:noInline')
  static referenciaSubproducto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<referenciaSubproducto>(create);
  static referenciaSubproducto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idReferencia => $_getIZ(0);
  @$pb.TagNumber(1)
  set idReferencia($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdReferencia() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdReferencia() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get idSubproducto => $_getIZ(1);
  @$pb.TagNumber(2)
  set idSubproducto($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdSubproducto() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdSubproducto() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get fechaHoraRegistro => $_getIZ(2);
  @$pb.TagNumber(3)
  set fechaHoraRegistro($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFechaHoraRegistro() => $_has(2);
  @$pb.TagNumber(3)
  void clearFechaHoraRegistro() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get estadoReferencia => $_getIZ(3);
  @$pb.TagNumber(4)
  set estadoReferencia($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEstadoReferencia() => $_has(3);
  @$pb.TagNumber(4)
  void clearEstadoReferencia() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get numeroTelefono => $_getSZ(4);
  @$pb.TagNumber(5)
  set numeroTelefono($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNumeroTelefono() => $_has(4);
  @$pb.TagNumber(5)
  void clearNumeroTelefono() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get nombreApellido => $_getSZ(5);
  @$pb.TagNumber(6)
  set nombreApellido($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNombreApellido() => $_has(5);
  @$pb.TagNumber(6)
  void clearNombreApellido() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get idreferente => $_getIZ(6);
  @$pb.TagNumber(7)
  set idreferente($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIdreferente() => $_has(6);
  @$pb.TagNumber(7)
  void clearIdreferente() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get monto => $_getN(7);
  @$pb.TagNumber(8)
  set monto($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasMonto() => $_has(7);
  @$pb.TagNumber(8)
  void clearMonto() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get nombreEntidad => $_getSZ(8);
  @$pb.TagNumber(9)
  set nombreEntidad($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasNombreEntidad() => $_has(8);
  @$pb.TagNumber(9)
  void clearNombreEntidad() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get fechaCierre => $_getIZ(9);
  @$pb.TagNumber(10)
  set fechaCierre($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasFechaCierre() => $_has(9);
  @$pb.TagNumber(10)
  void clearFechaCierre() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get observaciones => $_getSZ(10);
  @$pb.TagNumber(11)
  set observaciones($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasObservaciones() => $_has(10);
  @$pb.TagNumber(11)
  void clearObservaciones() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get puntosGanados => $_getIZ(11);
  @$pb.TagNumber(12)
  set puntosGanados($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasPuntosGanados() => $_has(11);
  @$pb.TagNumber(12)
  void clearPuntosGanados() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get nombreSubpr => $_getSZ(12);
  @$pb.TagNumber(13)
  set nombreSubpr($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasNombreSubpr() => $_has(12);
  @$pb.TagNumber(13)
  void clearNombreSubpr() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get nombreProducto => $_getSZ(13);
  @$pb.TagNumber(14)
  set nombreProducto($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasNombreProducto() => $_has(13);
  @$pb.TagNumber(14)
  void clearNombreProducto() => clearField(14);
}

class getReferenciasSubprResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'getReferenciasSubprResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..pc<referenciaSubproducto>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.PM, subBuilder: referenciaSubproducto.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nextPageToken')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sizePage', $pb.PbFieldType.O3, protoName: 'sizePage')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'more')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'puntosGanados', $pb.PbFieldType.O3, protoName: 'puntosGanados')
    ..hasRequiredFields = false
  ;

  getReferenciasSubprResponse._() : super();
  factory getReferenciasSubprResponse({
    $core.Iterable<referenciaSubproducto>? data,
    $core.String? nextPageToken,
    $core.int? sizePage,
    $core.bool? more,
    $core.int? puntosGanados,
  }) {
    final result = create();
    if (data != null) {
      result.data.addAll(data);
    }
    if (nextPageToken != null) {
      result.nextPageToken = nextPageToken;
    }
    if (sizePage != null) {
      result.sizePage = sizePage;
    }
    if (more != null) {
      result.more = more;
    }
    if (puntosGanados != null) {
      result.puntosGanados = puntosGanados;
    }
    return result;
  }
  factory getReferenciasSubprResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory getReferenciasSubprResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  getReferenciasSubprResponse clone() => getReferenciasSubprResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  getReferenciasSubprResponse copyWith(void Function(getReferenciasSubprResponse) updates) => super.copyWith((message) => updates(message as getReferenciasSubprResponse)) as getReferenciasSubprResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static getReferenciasSubprResponse create() => getReferenciasSubprResponse._();
  getReferenciasSubprResponse createEmptyInstance() => create();
  static $pb.PbList<getReferenciasSubprResponse> createRepeated() => $pb.PbList<getReferenciasSubprResponse>();
  @$core.pragma('dart2js:noInline')
  static getReferenciasSubprResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<getReferenciasSubprResponse>(create);
  static getReferenciasSubprResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<referenciaSubproducto> get data => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get nextPageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextPageToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNextPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextPageToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get sizePage => $_getIZ(2);
  @$pb.TagNumber(3)
  set sizePage($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSizePage() => $_has(2);
  @$pb.TagNumber(3)
  void clearSizePage() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get more => $_getBF(3);
  @$pb.TagNumber(4)
  set more($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMore() => $_has(3);
  @$pb.TagNumber(4)
  void clearMore() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get puntosGanados => $_getIZ(4);
  @$pb.TagNumber(5)
  set puntosGanados($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPuntosGanados() => $_has(4);
  @$pb.TagNumber(5)
  void clearPuntosGanados() => clearField(5);
}

class saveRefEmpresaRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'saveRefEmpresaRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionString', protoName: 'sessionString')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nombreEmpresa', protoName: 'nombreEmpresa')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'identificacionEmpresa', protoName: 'identificacionEmpresa')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nombreContacto', protoName: 'nombreContacto')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'telefonoEmpresa', protoName: 'telefonoEmpresa')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'estadoRefEmpresa', protoName: 'estadoRefEmpresa')
    ..hasRequiredFields = false
  ;

  saveRefEmpresaRequest._() : super();
  factory saveRefEmpresaRequest({
    $core.String? sessionString,
    $core.String? nombreEmpresa,
    $core.String? identificacionEmpresa,
    $core.String? nombreContacto,
    $core.String? telefonoEmpresa,
    $core.String? estadoRefEmpresa,
  }) {
    final result = create();
    if (sessionString != null) {
      result.sessionString = sessionString;
    }
    if (nombreEmpresa != null) {
      result.nombreEmpresa = nombreEmpresa;
    }
    if (identificacionEmpresa != null) {
      result.identificacionEmpresa = identificacionEmpresa;
    }
    if (nombreContacto != null) {
      result.nombreContacto = nombreContacto;
    }
    if (telefonoEmpresa != null) {
      result.telefonoEmpresa = telefonoEmpresa;
    }
    if (estadoRefEmpresa != null) {
      result.estadoRefEmpresa = estadoRefEmpresa;
    }
    return result;
  }
  factory saveRefEmpresaRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory saveRefEmpresaRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  saveRefEmpresaRequest clone() => saveRefEmpresaRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  saveRefEmpresaRequest copyWith(void Function(saveRefEmpresaRequest) updates) => super.copyWith((message) => updates(message as saveRefEmpresaRequest)) as saveRefEmpresaRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static saveRefEmpresaRequest create() => saveRefEmpresaRequest._();
  saveRefEmpresaRequest createEmptyInstance() => create();
  static $pb.PbList<saveRefEmpresaRequest> createRepeated() => $pb.PbList<saveRefEmpresaRequest>();
  @$core.pragma('dart2js:noInline')
  static saveRefEmpresaRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<saveRefEmpresaRequest>(create);
  static saveRefEmpresaRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionString => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionString($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionString() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionString() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nombreEmpresa => $_getSZ(1);
  @$pb.TagNumber(2)
  set nombreEmpresa($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNombreEmpresa() => $_has(1);
  @$pb.TagNumber(2)
  void clearNombreEmpresa() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get identificacionEmpresa => $_getSZ(2);
  @$pb.TagNumber(3)
  set identificacionEmpresa($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIdentificacionEmpresa() => $_has(2);
  @$pb.TagNumber(3)
  void clearIdentificacionEmpresa() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get nombreContacto => $_getSZ(3);
  @$pb.TagNumber(4)
  set nombreContacto($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNombreContacto() => $_has(3);
  @$pb.TagNumber(4)
  void clearNombreContacto() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get telefonoEmpresa => $_getSZ(4);
  @$pb.TagNumber(5)
  set telefonoEmpresa($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTelefonoEmpresa() => $_has(4);
  @$pb.TagNumber(5)
  void clearTelefonoEmpresa() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get estadoRefEmpresa => $_getSZ(5);
  @$pb.TagNumber(6)
  set estadoRefEmpresa($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEstadoRefEmpresa() => $_has(5);
  @$pb.TagNumber(6)
  void clearEstadoRefEmpresa() => clearField(6);
}

class saveRefEmpresaResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'saveRefEmpresaResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mensaje')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'puntosGanados', $pb.PbFieldType.O3, protoName: 'puntosGanados')
    ..hasRequiredFields = false
  ;

  saveRefEmpresaResponse._() : super();
  factory saveRefEmpresaResponse({
    $core.String? mensaje,
    $core.int? puntosGanados,
  }) {
    final result = create();
    if (mensaje != null) {
      result.mensaje = mensaje;
    }
    if (puntosGanados != null) {
      result.puntosGanados = puntosGanados;
    }
    return result;
  }
  factory saveRefEmpresaResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory saveRefEmpresaResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  saveRefEmpresaResponse clone() => saveRefEmpresaResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  saveRefEmpresaResponse copyWith(void Function(saveRefEmpresaResponse) updates) => super.copyWith((message) => updates(message as saveRefEmpresaResponse)) as saveRefEmpresaResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static saveRefEmpresaResponse create() => saveRefEmpresaResponse._();
  saveRefEmpresaResponse createEmptyInstance() => create();
  static $pb.PbList<saveRefEmpresaResponse> createRepeated() => $pb.PbList<saveRefEmpresaResponse>();
  @$core.pragma('dart2js:noInline')
  static saveRefEmpresaResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<saveRefEmpresaResponse>(create);
  static saveRefEmpresaResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mensaje => $_getSZ(0);
  @$pb.TagNumber(1)
  set mensaje($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMensaje() => $_has(0);
  @$pb.TagNumber(1)
  void clearMensaje() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get puntosGanados => $_getIZ(1);
  @$pb.TagNumber(2)
  set puntosGanados($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPuntosGanados() => $_has(1);
  @$pb.TagNumber(2)
  void clearPuntosGanados() => clearField(2);
}

class getReferenciasEmprRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'getReferenciasEmprRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionString', protoName: 'sessionString')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageKey', protoName: 'pageKey')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'term')
    ..hasRequiredFields = false
  ;

  getReferenciasEmprRequest._() : super();
  factory getReferenciasEmprRequest({
    $core.String? sessionString,
    $core.String? pageKey,
    $core.String? term,
  }) {
    final result = create();
    if (sessionString != null) {
      result.sessionString = sessionString;
    }
    if (pageKey != null) {
      result.pageKey = pageKey;
    }
    if (term != null) {
      result.term = term;
    }
    return result;
  }
  factory getReferenciasEmprRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory getReferenciasEmprRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  getReferenciasEmprRequest clone() => getReferenciasEmprRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  getReferenciasEmprRequest copyWith(void Function(getReferenciasEmprRequest) updates) => super.copyWith((message) => updates(message as getReferenciasEmprRequest)) as getReferenciasEmprRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static getReferenciasEmprRequest create() => getReferenciasEmprRequest._();
  getReferenciasEmprRequest createEmptyInstance() => create();
  static $pb.PbList<getReferenciasEmprRequest> createRepeated() => $pb.PbList<getReferenciasEmprRequest>();
  @$core.pragma('dart2js:noInline')
  static getReferenciasEmprRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<getReferenciasEmprRequest>(create);
  static getReferenciasEmprRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionString => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionString($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionString() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionString() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pageKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set pageKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get term => $_getSZ(2);
  @$pb.TagNumber(3)
  set term($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTerm() => $_has(2);
  @$pb.TagNumber(3)
  void clearTerm() => clearField(3);
}

class referenciaEmpresa extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'referenciaEmpresa', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idRefEmpresa', $pb.PbFieldType.O3, protoName: 'idRefEmpresa')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nombreEmpresa', protoName: 'nombreEmpresa')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'identificacionEmpresa', protoName: 'identificacionEmpresa')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nombreContacto', protoName: 'nombreContacto')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'telefonoEmpresa', protoName: 'telefonoEmpresa')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'estadoRefEmpresa', $pb.PbFieldType.O3, protoName: 'estadoRefEmpresa')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'puntosGanados', $pb.PbFieldType.O3, protoName: 'puntosGanados')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fechaHoraRegistro', protoName: 'fechaHoraRegistro')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fechaModificado', protoName: 'fechaModificado')
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idreferente', $pb.PbFieldType.O3)
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fechaCierre', protoName: 'fechaCierre')
    ..hasRequiredFields = false
  ;

  referenciaEmpresa._() : super();
  factory referenciaEmpresa({
    $core.int? idRefEmpresa,
    $core.String? nombreEmpresa,
    $core.String? identificacionEmpresa,
    $core.String? nombreContacto,
    $core.String? telefonoEmpresa,
    $core.int? estadoRefEmpresa,
    $core.int? puntosGanados,
    $core.String? fechaHoraRegistro,
    $core.String? fechaModificado,
    $core.int? idreferente,
    $core.String? fechaCierre,
  }) {
    final result = create();
    if (idRefEmpresa != null) {
      result.idRefEmpresa = idRefEmpresa;
    }
    if (nombreEmpresa != null) {
      result.nombreEmpresa = nombreEmpresa;
    }
    if (identificacionEmpresa != null) {
      result.identificacionEmpresa = identificacionEmpresa;
    }
    if (nombreContacto != null) {
      result.nombreContacto = nombreContacto;
    }
    if (telefonoEmpresa != null) {
      result.telefonoEmpresa = telefonoEmpresa;
    }
    if (estadoRefEmpresa != null) {
      result.estadoRefEmpresa = estadoRefEmpresa;
    }
    if (puntosGanados != null) {
      result.puntosGanados = puntosGanados;
    }
    if (fechaHoraRegistro != null) {
      result.fechaHoraRegistro = fechaHoraRegistro;
    }
    if (fechaModificado != null) {
      result.fechaModificado = fechaModificado;
    }
    if (idreferente != null) {
      result.idreferente = idreferente;
    }
    if (fechaCierre != null) {
      result.fechaCierre = fechaCierre;
    }
    return result;
  }
  factory referenciaEmpresa.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory referenciaEmpresa.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  referenciaEmpresa clone() => referenciaEmpresa()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  referenciaEmpresa copyWith(void Function(referenciaEmpresa) updates) => super.copyWith((message) => updates(message as referenciaEmpresa)) as referenciaEmpresa; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static referenciaEmpresa create() => referenciaEmpresa._();
  referenciaEmpresa createEmptyInstance() => create();
  static $pb.PbList<referenciaEmpresa> createRepeated() => $pb.PbList<referenciaEmpresa>();
  @$core.pragma('dart2js:noInline')
  static referenciaEmpresa getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<referenciaEmpresa>(create);
  static referenciaEmpresa? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idRefEmpresa => $_getIZ(0);
  @$pb.TagNumber(1)
  set idRefEmpresa($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdRefEmpresa() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdRefEmpresa() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nombreEmpresa => $_getSZ(1);
  @$pb.TagNumber(2)
  set nombreEmpresa($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNombreEmpresa() => $_has(1);
  @$pb.TagNumber(2)
  void clearNombreEmpresa() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get identificacionEmpresa => $_getSZ(2);
  @$pb.TagNumber(3)
  set identificacionEmpresa($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIdentificacionEmpresa() => $_has(2);
  @$pb.TagNumber(3)
  void clearIdentificacionEmpresa() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get nombreContacto => $_getSZ(3);
  @$pb.TagNumber(4)
  set nombreContacto($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNombreContacto() => $_has(3);
  @$pb.TagNumber(4)
  void clearNombreContacto() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get telefonoEmpresa => $_getSZ(4);
  @$pb.TagNumber(5)
  set telefonoEmpresa($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTelefonoEmpresa() => $_has(4);
  @$pb.TagNumber(5)
  void clearTelefonoEmpresa() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get estadoRefEmpresa => $_getIZ(5);
  @$pb.TagNumber(6)
  set estadoRefEmpresa($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEstadoRefEmpresa() => $_has(5);
  @$pb.TagNumber(6)
  void clearEstadoRefEmpresa() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get puntosGanados => $_getIZ(6);
  @$pb.TagNumber(7)
  set puntosGanados($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPuntosGanados() => $_has(6);
  @$pb.TagNumber(7)
  void clearPuntosGanados() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get fechaHoraRegistro => $_getSZ(7);
  @$pb.TagNumber(8)
  set fechaHoraRegistro($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFechaHoraRegistro() => $_has(7);
  @$pb.TagNumber(8)
  void clearFechaHoraRegistro() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get fechaModificado => $_getSZ(8);
  @$pb.TagNumber(9)
  set fechaModificado($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasFechaModificado() => $_has(8);
  @$pb.TagNumber(9)
  void clearFechaModificado() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get idreferente => $_getIZ(9);
  @$pb.TagNumber(10)
  set idreferente($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasIdreferente() => $_has(9);
  @$pb.TagNumber(10)
  void clearIdreferente() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get fechaCierre => $_getSZ(10);
  @$pb.TagNumber(11)
  set fechaCierre($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasFechaCierre() => $_has(10);
  @$pb.TagNumber(11)
  void clearFechaCierre() => clearField(11);
}

class getReferenciasEmprResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'getReferenciasEmprResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..pc<referenciaEmpresa>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.PM, subBuilder: referenciaEmpresa.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nextPageToken')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sizePage', $pb.PbFieldType.O3, protoName: 'sizePage')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'more')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'puntosGanados', $pb.PbFieldType.O3, protoName: 'puntosGanados')
    ..hasRequiredFields = false
  ;

  getReferenciasEmprResponse._() : super();
  factory getReferenciasEmprResponse({
    $core.Iterable<referenciaEmpresa>? data,
    $core.String? nextPageToken,
    $core.int? sizePage,
    $core.bool? more,
    $core.int? puntosGanados,
  }) {
    final result = create();
    if (data != null) {
      result.data.addAll(data);
    }
    if (nextPageToken != null) {
      result.nextPageToken = nextPageToken;
    }
    if (sizePage != null) {
      result.sizePage = sizePage;
    }
    if (more != null) {
      result.more = more;
    }
    if (puntosGanados != null) {
      result.puntosGanados = puntosGanados;
    }
    return result;
  }
  factory getReferenciasEmprResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory getReferenciasEmprResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  getReferenciasEmprResponse clone() => getReferenciasEmprResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  getReferenciasEmprResponse copyWith(void Function(getReferenciasEmprResponse) updates) => super.copyWith((message) => updates(message as getReferenciasEmprResponse)) as getReferenciasEmprResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static getReferenciasEmprResponse create() => getReferenciasEmprResponse._();
  getReferenciasEmprResponse createEmptyInstance() => create();
  static $pb.PbList<getReferenciasEmprResponse> createRepeated() => $pb.PbList<getReferenciasEmprResponse>();
  @$core.pragma('dart2js:noInline')
  static getReferenciasEmprResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<getReferenciasEmprResponse>(create);
  static getReferenciasEmprResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<referenciaEmpresa> get data => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get nextPageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextPageToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNextPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextPageToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get sizePage => $_getIZ(2);
  @$pb.TagNumber(3)
  set sizePage($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSizePage() => $_has(2);
  @$pb.TagNumber(3)
  void clearSizePage() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get more => $_getBF(3);
  @$pb.TagNumber(4)
  set more($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMore() => $_has(3);
  @$pb.TagNumber(4)
  void clearMore() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get puntosGanados => $_getIZ(4);
  @$pb.TagNumber(5)
  set puntosGanados($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPuntosGanados() => $_has(4);
  @$pb.TagNumber(5)
  void clearPuntosGanados() => clearField(5);
}

class getMetricasRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'getMetricasRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionString', protoName: 'sessionString')
    ..hasRequiredFields = false
  ;

  getMetricasRequest._() : super();
  factory getMetricasRequest({
    $core.String? sessionString,
  }) {
    final result = create();
    if (sessionString != null) {
      result.sessionString = sessionString;
    }
    return result;
  }
  factory getMetricasRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory getMetricasRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  getMetricasRequest clone() => getMetricasRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  getMetricasRequest copyWith(void Function(getMetricasRequest) updates) => super.copyWith((message) => updates(message as getMetricasRequest)) as getMetricasRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static getMetricasRequest create() => getMetricasRequest._();
  getMetricasRequest createEmptyInstance() => create();
  static $pb.PbList<getMetricasRequest> createRepeated() => $pb.PbList<getMetricasRequest>();
  @$core.pragma('dart2js:noInline')
  static getMetricasRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<getMetricasRequest>(create);
  static getMetricasRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionString => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionString($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionString() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionString() => clearField(1);
}

class getMetricasResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'getMetricasResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalReferidos', protoName: 'totalReferidos')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'referidosEnProceso', protoName: 'referidosEnProceso')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'referidosAnulados', protoName: 'referidosAnulados')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'referidosConvertidos', protoName: 'referidosConvertidos')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tasaConversion', protoName: 'tasaConversion')
    ..hasRequiredFields = false
  ;

  getMetricasResponse._() : super();
  factory getMetricasResponse({
    $core.String? totalReferidos,
    $core.String? referidosEnProceso,
    $core.String? referidosAnulados,
    $core.String? referidosConvertidos,
    $core.String? tasaConversion,
  }) {
    final result = create();
    if (totalReferidos != null) {
      result.totalReferidos = totalReferidos;
    }
    if (referidosEnProceso != null) {
      result.referidosEnProceso = referidosEnProceso;
    }
    if (referidosAnulados != null) {
      result.referidosAnulados = referidosAnulados;
    }
    if (referidosConvertidos != null) {
      result.referidosConvertidos = referidosConvertidos;
    }
    if (tasaConversion != null) {
      result.tasaConversion = tasaConversion;
    }
    return result;
  }
  factory getMetricasResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory getMetricasResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  getMetricasResponse clone() => getMetricasResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  getMetricasResponse copyWith(void Function(getMetricasResponse) updates) => super.copyWith((message) => updates(message as getMetricasResponse)) as getMetricasResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static getMetricasResponse create() => getMetricasResponse._();
  getMetricasResponse createEmptyInstance() => create();
  static $pb.PbList<getMetricasResponse> createRepeated() => $pb.PbList<getMetricasResponse>();
  @$core.pragma('dart2js:noInline')
  static getMetricasResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<getMetricasResponse>(create);
  static getMetricasResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get totalReferidos => $_getSZ(0);
  @$pb.TagNumber(1)
  set totalReferidos($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTotalReferidos() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalReferidos() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get referidosEnProceso => $_getSZ(1);
  @$pb.TagNumber(2)
  set referidosEnProceso($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReferidosEnProceso() => $_has(1);
  @$pb.TagNumber(2)
  void clearReferidosEnProceso() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get referidosAnulados => $_getSZ(2);
  @$pb.TagNumber(3)
  set referidosAnulados($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReferidosAnulados() => $_has(2);
  @$pb.TagNumber(3)
  void clearReferidosAnulados() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get referidosConvertidos => $_getSZ(3);
  @$pb.TagNumber(4)
  set referidosConvertidos($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReferidosConvertidos() => $_has(3);
  @$pb.TagNumber(4)
  void clearReferidosConvertidos() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get tasaConversion => $_getSZ(4);
  @$pb.TagNumber(5)
  set tasaConversion($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTasaConversion() => $_has(4);
  @$pb.TagNumber(5)
  void clearTasaConversion() => clearField(5);
}

class referenteLoginRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'referenteLoginRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'usuario')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idTipoCuentaReferente', protoName: 'idTipoCuentaReferente')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clave')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionString', protoName: 'sessionString')
    ..hasRequiredFields = false
  ;

  referenteLoginRequest._() : super();
  factory referenteLoginRequest({
    $core.String? usuario,
    $core.String? idTipoCuentaReferente,
    $core.String? clave,
    $core.String? sessionString,
  }) {
    final result = create();
    if (usuario != null) {
      result.usuario = usuario;
    }
    if (idTipoCuentaReferente != null) {
      result.idTipoCuentaReferente = idTipoCuentaReferente;
    }
    if (clave != null) {
      result.clave = clave;
    }
    if (sessionString != null) {
      result.sessionString = sessionString;
    }
    return result;
  }
  factory referenteLoginRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory referenteLoginRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  referenteLoginRequest clone() => referenteLoginRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  referenteLoginRequest copyWith(void Function(referenteLoginRequest) updates) => super.copyWith((message) => updates(message as referenteLoginRequest)) as referenteLoginRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static referenteLoginRequest create() => referenteLoginRequest._();
  referenteLoginRequest createEmptyInstance() => create();
  static $pb.PbList<referenteLoginRequest> createRepeated() => $pb.PbList<referenteLoginRequest>();
  @$core.pragma('dart2js:noInline')
  static referenteLoginRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<referenteLoginRequest>(create);
  static referenteLoginRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get usuario => $_getSZ(0);
  @$pb.TagNumber(1)
  set usuario($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsuario() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsuario() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get idTipoCuentaReferente => $_getSZ(1);
  @$pb.TagNumber(2)
  set idTipoCuentaReferente($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdTipoCuentaReferente() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdTipoCuentaReferente() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get clave => $_getSZ(2);
  @$pb.TagNumber(3)
  set clave($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasClave() => $_has(2);
  @$pb.TagNumber(3)
  void clearClave() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get sessionString => $_getSZ(3);
  @$pb.TagNumber(4)
  set sessionString($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSessionString() => $_has(3);
  @$pb.TagNumber(4)
  void clearSessionString() => clearField(4);
}

class referenteLoginResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'referenteLoginResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  referenteLoginResponse._() : super();
  factory referenteLoginResponse({
    $core.String? message,
  }) {
    final result = create();
    if (message != null) {
      result.message = message;
    }
    return result;
  }
  factory referenteLoginResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory referenteLoginResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  referenteLoginResponse clone() => referenteLoginResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  referenteLoginResponse copyWith(void Function(referenteLoginResponse) updates) => super.copyWith((message) => updates(message as referenteLoginResponse)) as referenteLoginResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static referenteLoginResponse create() => referenteLoginResponse._();
  referenteLoginResponse createEmptyInstance() => create();
  static $pb.PbList<referenteLoginResponse> createRepeated() => $pb.PbList<referenteLoginResponse>();
  @$core.pragma('dart2js:noInline')
  static referenteLoginResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<referenteLoginResponse>(create);
  static referenteLoginResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class refCambiarClaveRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'refCambiarClaveRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msisdn')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'otp')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clave')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionString', protoName: 'sessionString')
    ..hasRequiredFields = false
  ;

  refCambiarClaveRequest._() : super();
  factory refCambiarClaveRequest({
    $core.String? msisdn,
    $core.String? otp,
    $core.String? clave,
    $core.String? sessionString,
  }) {
    final result = create();
    if (msisdn != null) {
      result.msisdn = msisdn;
    }
    if (otp != null) {
      result.otp = otp;
    }
    if (clave != null) {
      result.clave = clave;
    }
    if (sessionString != null) {
      result.sessionString = sessionString;
    }
    return result;
  }
  factory refCambiarClaveRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory refCambiarClaveRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  refCambiarClaveRequest clone() => refCambiarClaveRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  refCambiarClaveRequest copyWith(void Function(refCambiarClaveRequest) updates) => super.copyWith((message) => updates(message as refCambiarClaveRequest)) as refCambiarClaveRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static refCambiarClaveRequest create() => refCambiarClaveRequest._();
  refCambiarClaveRequest createEmptyInstance() => create();
  static $pb.PbList<refCambiarClaveRequest> createRepeated() => $pb.PbList<refCambiarClaveRequest>();
  @$core.pragma('dart2js:noInline')
  static refCambiarClaveRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<refCambiarClaveRequest>(create);
  static refCambiarClaveRequest? _defaultInstance;

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

  @$pb.TagNumber(3)
  $core.String get clave => $_getSZ(2);
  @$pb.TagNumber(3)
  set clave($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasClave() => $_has(2);
  @$pb.TagNumber(3)
  void clearClave() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get sessionString => $_getSZ(3);
  @$pb.TagNumber(4)
  set sessionString($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSessionString() => $_has(3);
  @$pb.TagNumber(4)
  void clearSessionString() => clearField(4);
}

class refCambiarClaveResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'refCambiarClaveResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  refCambiarClaveResponse._() : super();
  factory refCambiarClaveResponse({
    $core.String? message,
  }) {
    final result = create();
    if (message != null) {
      result.message = message;
    }
    return result;
  }
  factory refCambiarClaveResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory refCambiarClaveResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  refCambiarClaveResponse clone() => refCambiarClaveResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  refCambiarClaveResponse copyWith(void Function(refCambiarClaveResponse) updates) => super.copyWith((message) => updates(message as refCambiarClaveResponse)) as refCambiarClaveResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static refCambiarClaveResponse create() => refCambiarClaveResponse._();
  refCambiarClaveResponse createEmptyInstance() => create();
  static $pb.PbList<refCambiarClaveResponse> createRepeated() => $pb.PbList<refCambiarClaveResponse>();
  @$core.pragma('dart2js:noInline')
  static refCambiarClaveResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<refCambiarClaveResponse>(create);
  static refCambiarClaveResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class getProductosRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'getProductosRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionString', protoName: 'sessionString')
    ..hasRequiredFields = false
  ;

  getProductosRequest._() : super();
  factory getProductosRequest({
    $core.String? sessionString,
  }) {
    final result = create();
    if (sessionString != null) {
      result.sessionString = sessionString;
    }
    return result;
  }
  factory getProductosRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory getProductosRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  getProductosRequest clone() => getProductosRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  getProductosRequest copyWith(void Function(getProductosRequest) updates) => super.copyWith((message) => updates(message as getProductosRequest)) as getProductosRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static getProductosRequest create() => getProductosRequest._();
  getProductosRequest createEmptyInstance() => create();
  static $pb.PbList<getProductosRequest> createRepeated() => $pb.PbList<getProductosRequest>();
  @$core.pragma('dart2js:noInline')
  static getProductosRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<getProductosRequest>(create);
  static getProductosRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionString => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionString($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionString() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionString() => clearField(1);
}

class producto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'producto', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idProducto', $pb.PbFieldType.O3, protoName: 'idProducto')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nombreProducto', protoName: 'nombreProducto')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imagenProducto', protoName: 'imagenProducto')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'estadoProducto', $pb.PbFieldType.O3, protoName: 'estadoProducto')
    ..hasRequiredFields = false
  ;

  producto._() : super();
  factory producto({
    $core.int? idProducto,
    $core.String? nombreProducto,
    $core.String? imagenProducto,
    $core.int? estadoProducto,
  }) {
    final result = create();
    if (idProducto != null) {
      result.idProducto = idProducto;
    }
    if (nombreProducto != null) {
      result.nombreProducto = nombreProducto;
    }
    if (imagenProducto != null) {
      result.imagenProducto = imagenProducto;
    }
    if (estadoProducto != null) {
      result.estadoProducto = estadoProducto;
    }
    return result;
  }
  factory producto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory producto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  producto clone() => producto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  producto copyWith(void Function(producto) updates) => super.copyWith((message) => updates(message as producto)) as producto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static producto create() => producto._();
  producto createEmptyInstance() => create();
  static $pb.PbList<producto> createRepeated() => $pb.PbList<producto>();
  @$core.pragma('dart2js:noInline')
  static producto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<producto>(create);
  static producto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idProducto => $_getIZ(0);
  @$pb.TagNumber(1)
  set idProducto($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdProducto() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdProducto() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nombreProducto => $_getSZ(1);
  @$pb.TagNumber(2)
  set nombreProducto($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNombreProducto() => $_has(1);
  @$pb.TagNumber(2)
  void clearNombreProducto() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get imagenProducto => $_getSZ(2);
  @$pb.TagNumber(3)
  set imagenProducto($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasImagenProducto() => $_has(2);
  @$pb.TagNumber(3)
  void clearImagenProducto() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get estadoProducto => $_getIZ(3);
  @$pb.TagNumber(4)
  set estadoProducto($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEstadoProducto() => $_has(3);
  @$pb.TagNumber(4)
  void clearEstadoProducto() => clearField(4);
}

class getProductosResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'getProductosResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..pc<producto>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'productos', $pb.PbFieldType.PM, subBuilder: producto.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'textoNegrita', protoName: 'textoNegrita')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'texto')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'textoColor', protoName: 'textoColor')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fecha')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storiesVistas', protoName: 'storiesVistas')
    ..hasRequiredFields = false
  ;

  getProductosResponse._() : super();
  factory getProductosResponse({
    $core.Iterable<producto>? productos,
    $core.String? textoNegrita,
    $core.String? texto,
    $core.String? textoColor,
    $core.String? fecha,
    $core.bool? storiesVistas,
  }) {
    final result = create();
    if (productos != null) {
      result.productos.addAll(productos);
    }
    if (textoNegrita != null) {
      result.textoNegrita = textoNegrita;
    }
    if (texto != null) {
      result.texto = texto;
    }
    if (textoColor != null) {
      result.textoColor = textoColor;
    }
    if (fecha != null) {
      result.fecha = fecha;
    }
    if (storiesVistas != null) {
      result.storiesVistas = storiesVistas;
    }
    return result;
  }
  factory getProductosResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory getProductosResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  getProductosResponse clone() => getProductosResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  getProductosResponse copyWith(void Function(getProductosResponse) updates) => super.copyWith((message) => updates(message as getProductosResponse)) as getProductosResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static getProductosResponse create() => getProductosResponse._();
  getProductosResponse createEmptyInstance() => create();
  static $pb.PbList<getProductosResponse> createRepeated() => $pb.PbList<getProductosResponse>();
  @$core.pragma('dart2js:noInline')
  static getProductosResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<getProductosResponse>(create);
  static getProductosResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<producto> get productos => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get textoNegrita => $_getSZ(1);
  @$pb.TagNumber(2)
  set textoNegrita($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTextoNegrita() => $_has(1);
  @$pb.TagNumber(2)
  void clearTextoNegrita() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get texto => $_getSZ(2);
  @$pb.TagNumber(3)
  set texto($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTexto() => $_has(2);
  @$pb.TagNumber(3)
  void clearTexto() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get textoColor => $_getSZ(3);
  @$pb.TagNumber(4)
  set textoColor($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTextoColor() => $_has(3);
  @$pb.TagNumber(4)
  void clearTextoColor() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get fecha => $_getSZ(4);
  @$pb.TagNumber(5)
  set fecha($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFecha() => $_has(4);
  @$pb.TagNumber(5)
  void clearFecha() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get storiesVistas => $_getBF(5);
  @$pb.TagNumber(6)
  set storiesVistas($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasStoriesVistas() => $_has(5);
  @$pb.TagNumber(6)
  void clearStoriesVistas() => clearField(6);
}

class registerVistaStoriesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'registerVistaStoriesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionString', protoName: 'sessionString')
    ..hasRequiredFields = false
  ;

  registerVistaStoriesRequest._() : super();
  factory registerVistaStoriesRequest({
    $core.String? sessionString,
  }) {
    final result = create();
    if (sessionString != null) {
      result.sessionString = sessionString;
    }
    return result;
  }
  factory registerVistaStoriesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory registerVistaStoriesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  registerVistaStoriesRequest clone() => registerVistaStoriesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  registerVistaStoriesRequest copyWith(void Function(registerVistaStoriesRequest) updates) => super.copyWith((message) => updates(message as registerVistaStoriesRequest)) as registerVistaStoriesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static registerVistaStoriesRequest create() => registerVistaStoriesRequest._();
  registerVistaStoriesRequest createEmptyInstance() => create();
  static $pb.PbList<registerVistaStoriesRequest> createRepeated() => $pb.PbList<registerVistaStoriesRequest>();
  @$core.pragma('dart2js:noInline')
  static registerVistaStoriesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<registerVistaStoriesRequest>(create);
  static registerVistaStoriesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionString => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionString($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionString() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionString() => clearField(1);
}

class registerVistaStoriesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'registerVistaStoriesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicePackage'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'puntosGanados', $pb.PbFieldType.O3, protoName: 'puntosGanados')
    ..hasRequiredFields = false
  ;

  registerVistaStoriesResponse._() : super();
  factory registerVistaStoriesResponse({
    $core.int? puntosGanados,
  }) {
    final result = create();
    if (puntosGanados != null) {
      result.puntosGanados = puntosGanados;
    }
    return result;
  }
  factory registerVistaStoriesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory registerVistaStoriesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  registerVistaStoriesResponse clone() => registerVistaStoriesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  registerVistaStoriesResponse copyWith(void Function(registerVistaStoriesResponse) updates) => super.copyWith((message) => updates(message as registerVistaStoriesResponse)) as registerVistaStoriesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static registerVistaStoriesResponse create() => registerVistaStoriesResponse._();
  registerVistaStoriesResponse createEmptyInstance() => create();
  static $pb.PbList<registerVistaStoriesResponse> createRepeated() => $pb.PbList<registerVistaStoriesResponse>();
  @$core.pragma('dart2js:noInline')
  static registerVistaStoriesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<registerVistaStoriesResponse>(create);
  static registerVistaStoriesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get puntosGanados => $_getIZ(0);
  @$pb.TagNumber(1)
  set puntosGanados($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPuntosGanados() => $_has(0);
  @$pb.TagNumber(1)
  void clearPuntosGanados() => clearField(1);
}

