//
//  Generated code. Do not modify.
//  source: proto/service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'service.pb.dart' as $0;
import 'service.pbjson.dart';

export 'service.pb.dart';

abstract class ServiceBase extends $pb.GeneratedService {
  $async.Future<$0.landingConfigResponse> ladingConfig($pb.ServerContext ctx, $0.landingConfigRequest request);
  $async.Future<$0.otpResponse> otp($pb.ServerContext ctx, $0.otpRequest request);
  $async.Future<$0.checkOtpResponse> checkOtp($pb.ServerContext ctx, $0.checkOtpRequest request);
  $async.Future<$0.pingResponse> pingPong($pb.ServerContext ctx, $0.pingRequest request);
  $async.Future<$0.referenteRegisterResponse> referenteRegister($pb.ServerContext ctx, $0.referenteRegisterRequest request);
  $async.Future<$0.getReferenteResponse> getReferente($pb.ServerContext ctx, $0.getReferenteRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'ladingConfig': return $0.landingConfigRequest();
      case 'otp': return $0.otpRequest();
      case 'checkOtp': return $0.checkOtpRequest();
      case 'PingPong': return $0.pingRequest();
      case 'referenteRegister': return $0.referenteRegisterRequest();
      case 'getReferente': return $0.getReferenteRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'ladingConfig': return this.ladingConfig(ctx, request as $0.landingConfigRequest);
      case 'otp': return this.otp(ctx, request as $0.otpRequest);
      case 'checkOtp': return this.checkOtp(ctx, request as $0.checkOtpRequest);
      case 'PingPong': return this.pingPong(ctx, request as $0.pingRequest);
      case 'referenteRegister': return this.referenteRegister(ctx, request as $0.referenteRegisterRequest);
      case 'getReferente': return this.getReferente(ctx, request as $0.getReferenteRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => ServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => ServiceBase$messageJson;
}

