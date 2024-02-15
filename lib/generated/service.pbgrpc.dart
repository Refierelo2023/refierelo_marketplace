//
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'service.pb.dart' as $0;
export 'service.pb.dart';

class ServiceClient extends $grpc.Client {
  static final _$ladingConfig =
      $grpc.ClientMethod<$0.landingConfigRequest, $0.landingConfigResponse>(
          '/servicePackage.Service/ladingConfig',
          ($0.landingConfigRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.landingConfigResponse.fromBuffer(value));
  static final _$otp = $grpc.ClientMethod<$0.otpRequest, $0.otpResponse>(
      '/servicePackage.Service/otp',
      ($0.otpRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.otpResponse.fromBuffer(value));
  static final _$checkOtp =
      $grpc.ClientMethod<$0.checkOtpRequest, $0.checkOtpResponse>(
          '/servicePackage.Service/checkOtp',
          ($0.checkOtpRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.checkOtpResponse.fromBuffer(value));
  static final _$pingPong = $grpc.ClientMethod<$0.pingRequest, $0.pingResponse>(
      '/servicePackage.Service/PingPong',
      ($0.pingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.pingResponse.fromBuffer(value));
  static final _$referenteRegister = $grpc.ClientMethod<
          $0.referenteRegisterRequest, $0.referenteRegisterResponse>(
      '/servicePackage.Service/referenteRegister',
      ($0.referenteRegisterRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.referenteRegisterResponse.fromBuffer(value));
  static final _$getReferente =
      $grpc.ClientMethod<$0.getReferenteRequest, $0.getReferenteResponse>(
          '/servicePackage.Service/getReferente',
          ($0.getReferenteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.getReferenteResponse.fromBuffer(value));
  static final _$getReferenteByEmail = $grpc.ClientMethod<
          $0.getReferenteByEmailRequest, $0.getReferenteByEmailResponse>(
      '/servicePackage.Service/getReferenteByEmail',
      ($0.getReferenteByEmailRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.getReferenteByEmailResponse.fromBuffer(value));
  static final _$referenteUpdate =
      $grpc.ClientMethod<$0.referenteUpdateRequest, $0.referenteUpdateResponse>(
          '/servicePackage.Service/referenteUpdate',
          ($0.referenteUpdateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.referenteUpdateResponse.fromBuffer(value));
  static final _$refAppRecomendado = $grpc.ClientMethod<
          $0.refAppRecomendadoRequest, $0.refAppRecomendadoResponse>(
      '/servicePackage.Service/refAppRecomendado',
      ($0.refAppRecomendadoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.refAppRecomendadoResponse.fromBuffer(value));
  static final _$asignarPuntos =
      $grpc.ClientMethod<$0.asignarPuntosRequest, $0.asignarPuntosResponse>(
          '/servicePackage.Service/asignarPuntos',
          ($0.asignarPuntosRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.asignarPuntosResponse.fromBuffer(value));
  static final _$getMediosPagos =
      $grpc.ClientMethod<$0.medioPagoRequest, $0.medioPagoResponse>(
          '/servicePackage.Service/getMediosPagos',
          ($0.medioPagoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.medioPagoResponse.fromBuffer(value));
  static final _$getRecursos =
      $grpc.ClientMethod<$0.recursosRequest, $0.recursosResponse>(
          '/servicePackage.Service/getRecursos',
          ($0.recursosRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.recursosResponse.fromBuffer(value));
  static final _$mensajeContactosRegister = $grpc.ClientMethod<
          $0.mensajeContactosRequest, $0.mensajeContactosResponse>(
      '/servicePackage.Service/mensajeContactosRegister',
      ($0.mensajeContactosRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.mensajeContactosResponse.fromBuffer(value));
  static final _$getSubproductos =
      $grpc.ClientMethod<$0.subProductosRequest, $0.subProductosResponse>(
          '/servicePackage.Service/getSubproductos',
          ($0.subProductosRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.subProductosResponse.fromBuffer(value));
  static final _$getSubproductoById =
      $grpc.ClientMethod<$0.subProductoByIdRequest, $0.subProductoByIdResponse>(
          '/servicePackage.Service/getSubproductoById',
          ($0.subProductoByIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.subProductoByIdResponse.fromBuffer(value));
  static final _$saveRefSubproducto = $grpc.ClientMethod<
          $0.saveRefSubproductoRequest, $0.saveRefSubproductoResponse>(
      '/servicePackage.Service/saveRefSubproducto',
      ($0.saveRefSubproductoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.saveRefSubproductoResponse.fromBuffer(value));
  static final _$getProductoById =
      $grpc.ClientMethod<$0.productoByIdRequest, $0.productoByIdResponse>(
          '/servicePackage.Service/getProductoById',
          ($0.productoByIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.productoByIdResponse.fromBuffer(value));
  static final _$getMensajeContactos = $grpc.ClientMethod<
          $0.getMensajeContactosRequest, $0.getMensajeContactosResponse>(
      '/servicePackage.Service/getMensajeContactos',
      ($0.getMensajeContactosRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.getMensajeContactosResponse.fromBuffer(value));
  static final _$getReferenciasSubpr = $grpc.ClientMethod<
          $0.getReferenciasSubprRequest, $0.getReferenciasSubprResponse>(
      '/servicePackage.Service/getReferenciasSubpr',
      ($0.getReferenciasSubprRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.getReferenciasSubprResponse.fromBuffer(value));
  static final _$saveRefEmpresa =
      $grpc.ClientMethod<$0.saveRefEmpresaRequest, $0.saveRefEmpresaResponse>(
          '/servicePackage.Service/saveRefEmpresa',
          ($0.saveRefEmpresaRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.saveRefEmpresaResponse.fromBuffer(value));
  static final _$getReferenciasEmpresas = $grpc.ClientMethod<
          $0.getReferenciasEmprRequest, $0.getReferenciasEmprResponse>(
      '/servicePackage.Service/getReferenciasEmpresas',
      ($0.getReferenciasEmprRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.getReferenciasEmprResponse.fromBuffer(value));
  static final _$getMetricas =
      $grpc.ClientMethod<$0.getMetricasRequest, $0.getMetricasResponse>(
          '/servicePackage.Service/getMetricas',
          ($0.getMetricasRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.getMetricasResponse.fromBuffer(value));
  static final _$referenteLogin =
      $grpc.ClientMethod<$0.referenteLoginRequest, $0.referenteLoginResponse>(
          '/servicePackage.Service/referenteLogin',
          ($0.referenteLoginRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.referenteLoginResponse.fromBuffer(value));
  static final _$refCambiarClave =
      $grpc.ClientMethod<$0.refCambiarClaveRequest, $0.refCambiarClaveResponse>(
          '/servicePackage.Service/refCambiarClave',
          ($0.refCambiarClaveRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.refCambiarClaveResponse.fromBuffer(value));
  static final _$getProductos =
      $grpc.ClientMethod<$0.getProductosRequest, $0.getProductosResponse>(
          '/servicePackage.Service/getProductos',
          ($0.getProductosRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.getProductosResponse.fromBuffer(value));
  static final _$registerVistaStories = $grpc.ClientMethod<
          $0.registerVistaStoriesRequest, $0.registerVistaStoriesResponse>(
      '/servicePackage.Service/registerVistaStories',
      ($0.registerVistaStoriesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.registerVistaStoriesResponse.fromBuffer(value));

  ServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.landingConfigResponse> ladingConfig(
      $0.landingConfigRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ladingConfig, request, options: options);
  }

  $grpc.ResponseFuture<$0.otpResponse> otp($0.otpRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$otp, request, options: options);
  }

  $grpc.ResponseFuture<$0.checkOtpResponse> checkOtp($0.checkOtpRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkOtp, request, options: options);
  }

  $grpc.ResponseFuture<$0.pingResponse> pingPong($0.pingRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pingPong, request, options: options);
  }

  $grpc.ResponseFuture<$0.referenteRegisterResponse> referenteRegister(
      $0.referenteRegisterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$referenteRegister, request, options: options);
  }

  $grpc.ResponseFuture<$0.getReferenteResponse> getReferente(
      $0.getReferenteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReferente, request, options: options);
  }

  $grpc.ResponseFuture<$0.getReferenteByEmailResponse> getReferenteByEmail(
      $0.getReferenteByEmailRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReferenteByEmail, request, options: options);
  }

  $grpc.ResponseFuture<$0.referenteUpdateResponse> referenteUpdate(
      $0.referenteUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$referenteUpdate, request, options: options);
  }

  $grpc.ResponseFuture<$0.refAppRecomendadoResponse> refAppRecomendado(
      $0.refAppRecomendadoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refAppRecomendado, request, options: options);
  }

  $grpc.ResponseFuture<$0.asignarPuntosResponse> asignarPuntos(
      $0.asignarPuntosRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$asignarPuntos, request, options: options);
  }

  $grpc.ResponseStream<$0.medioPagoResponse> getMediosPagos(
      $0.medioPagoRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getMediosPagos, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.recursosResponse> getRecursos(
      $0.recursosRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getRecursos, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.mensajeContactosResponse> mensajeContactosRegister(
      $0.mensajeContactosRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$mensajeContactosRegister, request,
        options: options);
  }

  $grpc.ResponseStream<$0.subProductosResponse> getSubproductos(
      $0.subProductosRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getSubproductos, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.subProductoByIdResponse> getSubproductoById(
      $0.subProductoByIdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSubproductoById, request, options: options);
  }

  $grpc.ResponseFuture<$0.saveRefSubproductoResponse> saveRefSubproducto(
      $0.saveRefSubproductoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$saveRefSubproducto, request, options: options);
  }

  $grpc.ResponseFuture<$0.productoByIdResponse> getProductoById(
      $0.productoByIdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProductoById, request, options: options);
  }

  $grpc.ResponseFuture<$0.getMensajeContactosResponse> getMensajeContactos(
      $0.getMensajeContactosRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMensajeContactos, request, options: options);
  }

  $grpc.ResponseFuture<$0.getReferenciasSubprResponse> getReferenciasSubpr(
      $0.getReferenciasSubprRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReferenciasSubpr, request, options: options);
  }

  $grpc.ResponseFuture<$0.saveRefEmpresaResponse> saveRefEmpresa(
      $0.saveRefEmpresaRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$saveRefEmpresa, request, options: options);
  }

  $grpc.ResponseFuture<$0.getReferenciasEmprResponse> getReferenciasEmpresas(
      $0.getReferenciasEmprRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReferenciasEmpresas, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.getMetricasResponse> getMetricas(
      $0.getMetricasRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMetricas, request, options: options);
  }

  $grpc.ResponseFuture<$0.referenteLoginResponse> referenteLogin(
      $0.referenteLoginRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$referenteLogin, request, options: options);
  }

  $grpc.ResponseFuture<$0.refCambiarClaveResponse> refCambiarClave(
      $0.refCambiarClaveRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refCambiarClave, request, options: options);
  }

  $grpc.ResponseFuture<$0.getProductosResponse> getProductos(
      $0.getProductosRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProductos, request, options: options);
  }

  $grpc.ResponseFuture<$0.registerVistaStoriesResponse> registerVistaStories(
      $0.registerVistaStoriesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerVistaStories, request, options: options);
  }
}

abstract class ServiceBase extends $grpc.Service {
  $core.String get $name => 'servicePackage.Service';

  ServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.landingConfigRequest, $0.landingConfigResponse>(
            'ladingConfig',
            ladingConfig_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.landingConfigRequest.fromBuffer(value),
            ($0.landingConfigResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.otpRequest, $0.otpResponse>(
        'otp',
        otp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.otpRequest.fromBuffer(value),
        ($0.otpResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.checkOtpRequest, $0.checkOtpResponse>(
        'checkOtp',
        checkOtp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.checkOtpRequest.fromBuffer(value),
        ($0.checkOtpResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.pingRequest, $0.pingResponse>(
        'PingPong',
        pingPong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.pingRequest.fromBuffer(value),
        ($0.pingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.referenteRegisterRequest,
            $0.referenteRegisterResponse>(
        'referenteRegister',
        referenteRegister_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.referenteRegisterRequest.fromBuffer(value),
        ($0.referenteRegisterResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.getReferenteRequest, $0.getReferenteResponse>(
            'getReferente',
            getReferente_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.getReferenteRequest.fromBuffer(value),
            ($0.getReferenteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.getReferenteByEmailRequest,
            $0.getReferenteByEmailResponse>(
        'getReferenteByEmail',
        getReferenteByEmail_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.getReferenteByEmailRequest.fromBuffer(value),
        ($0.getReferenteByEmailResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.referenteUpdateRequest,
            $0.referenteUpdateResponse>(
        'referenteUpdate',
        referenteUpdate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.referenteUpdateRequest.fromBuffer(value),
        ($0.referenteUpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.refAppRecomendadoRequest,
            $0.refAppRecomendadoResponse>(
        'refAppRecomendado',
        refAppRecomendado_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.refAppRecomendadoRequest.fromBuffer(value),
        ($0.refAppRecomendadoResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.asignarPuntosRequest, $0.asignarPuntosResponse>(
            'asignarPuntos',
            asignarPuntos_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.asignarPuntosRequest.fromBuffer(value),
            ($0.asignarPuntosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.medioPagoRequest, $0.medioPagoResponse>(
        'getMediosPagos',
        getMediosPagos_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.medioPagoRequest.fromBuffer(value),
        ($0.medioPagoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.recursosRequest, $0.recursosResponse>(
        'getRecursos',
        getRecursos_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.recursosRequest.fromBuffer(value),
        ($0.recursosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.mensajeContactosRequest,
            $0.mensajeContactosResponse>(
        'mensajeContactosRegister',
        mensajeContactosRegister_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.mensajeContactosRequest.fromBuffer(value),
        ($0.mensajeContactosResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.subProductosRequest, $0.subProductosResponse>(
            'getSubproductos',
            getSubproductos_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $0.subProductosRequest.fromBuffer(value),
            ($0.subProductosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.subProductoByIdRequest,
            $0.subProductoByIdResponse>(
        'getSubproductoById',
        getSubproductoById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.subProductoByIdRequest.fromBuffer(value),
        ($0.subProductoByIdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.saveRefSubproductoRequest,
            $0.saveRefSubproductoResponse>(
        'saveRefSubproducto',
        saveRefSubproducto_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.saveRefSubproductoRequest.fromBuffer(value),
        ($0.saveRefSubproductoResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.productoByIdRequest, $0.productoByIdResponse>(
            'getProductoById',
            getProductoById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.productoByIdRequest.fromBuffer(value),
            ($0.productoByIdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.getMensajeContactosRequest,
            $0.getMensajeContactosResponse>(
        'getMensajeContactos',
        getMensajeContactos_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.getMensajeContactosRequest.fromBuffer(value),
        ($0.getMensajeContactosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.getReferenciasSubprRequest,
            $0.getReferenciasSubprResponse>(
        'getReferenciasSubpr',
        getReferenciasSubpr_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.getReferenciasSubprRequest.fromBuffer(value),
        ($0.getReferenciasSubprResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.saveRefEmpresaRequest,
            $0.saveRefEmpresaResponse>(
        'saveRefEmpresa',
        saveRefEmpresa_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.saveRefEmpresaRequest.fromBuffer(value),
        ($0.saveRefEmpresaResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.getReferenciasEmprRequest,
            $0.getReferenciasEmprResponse>(
        'getReferenciasEmpresas',
        getReferenciasEmpresas_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.getReferenciasEmprRequest.fromBuffer(value),
        ($0.getReferenciasEmprResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.getMetricasRequest, $0.getMetricasResponse>(
            'getMetricas',
            getMetricas_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.getMetricasRequest.fromBuffer(value),
            ($0.getMetricasResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.referenteLoginRequest,
            $0.referenteLoginResponse>(
        'referenteLogin',
        referenteLogin_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.referenteLoginRequest.fromBuffer(value),
        ($0.referenteLoginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.refCambiarClaveRequest,
            $0.refCambiarClaveResponse>(
        'refCambiarClave',
        refCambiarClave_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.refCambiarClaveRequest.fromBuffer(value),
        ($0.refCambiarClaveResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.getProductosRequest, $0.getProductosResponse>(
            'getProductos',
            getProductos_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.getProductosRequest.fromBuffer(value),
            ($0.getProductosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.registerVistaStoriesRequest,
            $0.registerVistaStoriesResponse>(
        'registerVistaStories',
        registerVistaStories_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.registerVistaStoriesRequest.fromBuffer(value),
        ($0.registerVistaStoriesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.landingConfigResponse> ladingConfig_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.landingConfigRequest> request) async {
    return ladingConfig(call, await request);
  }

  $async.Future<$0.otpResponse> otp_Pre(
      $grpc.ServiceCall call, $async.Future<$0.otpRequest> request) async {
    return otp(call, await request);
  }

  $async.Future<$0.checkOtpResponse> checkOtp_Pre(
      $grpc.ServiceCall call, $async.Future<$0.checkOtpRequest> request) async {
    return checkOtp(call, await request);
  }

  $async.Future<$0.pingResponse> pingPong_Pre(
      $grpc.ServiceCall call, $async.Future<$0.pingRequest> request) async {
    return pingPong(call, await request);
  }

  $async.Future<$0.referenteRegisterResponse> referenteRegister_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.referenteRegisterRequest> request) async {
    return referenteRegister(call, await request);
  }

  $async.Future<$0.getReferenteResponse> getReferente_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.getReferenteRequest> request) async {
    return getReferente(call, await request);
  }

  $async.Future<$0.getReferenteByEmailResponse> getReferenteByEmail_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.getReferenteByEmailRequest> request) async {
    return getReferenteByEmail(call, await request);
  }

  $async.Future<$0.referenteUpdateResponse> referenteUpdate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.referenteUpdateRequest> request) async {
    return referenteUpdate(call, await request);
  }

  $async.Future<$0.refAppRecomendadoResponse> refAppRecomendado_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.refAppRecomendadoRequest> request) async {
    return refAppRecomendado(call, await request);
  }

  $async.Future<$0.asignarPuntosResponse> asignarPuntos_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.asignarPuntosRequest> request) async {
    return asignarPuntos(call, await request);
  }

  $async.Stream<$0.medioPagoResponse> getMediosPagos_Pre($grpc.ServiceCall call,
      $async.Future<$0.medioPagoRequest> request) async* {
    yield* getMediosPagos(call, await request);
  }

  $async.Stream<$0.recursosResponse> getRecursos_Pre($grpc.ServiceCall call,
      $async.Future<$0.recursosRequest> request) async* {
    yield* getRecursos(call, await request);
  }

  $async.Future<$0.mensajeContactosResponse> mensajeContactosRegister_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.mensajeContactosRequest> request) async {
    return mensajeContactosRegister(call, await request);
  }

  $async.Stream<$0.subProductosResponse> getSubproductos_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.subProductosRequest> request) async* {
    yield* getSubproductos(call, await request);
  }

  $async.Future<$0.subProductoByIdResponse> getSubproductoById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.subProductoByIdRequest> request) async {
    return getSubproductoById(call, await request);
  }

  $async.Future<$0.saveRefSubproductoResponse> saveRefSubproducto_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.saveRefSubproductoRequest> request) async {
    return saveRefSubproducto(call, await request);
  }

  $async.Future<$0.productoByIdResponse> getProductoById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.productoByIdRequest> request) async {
    return getProductoById(call, await request);
  }

  $async.Future<$0.getMensajeContactosResponse> getMensajeContactos_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.getMensajeContactosRequest> request) async {
    return getMensajeContactos(call, await request);
  }

  $async.Future<$0.getReferenciasSubprResponse> getReferenciasSubpr_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.getReferenciasSubprRequest> request) async {
    return getReferenciasSubpr(call, await request);
  }

  $async.Future<$0.saveRefEmpresaResponse> saveRefEmpresa_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.saveRefEmpresaRequest> request) async {
    return saveRefEmpresa(call, await request);
  }

  $async.Future<$0.getReferenciasEmprResponse> getReferenciasEmpresas_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.getReferenciasEmprRequest> request) async {
    return getReferenciasEmpresas(call, await request);
  }

  $async.Future<$0.getMetricasResponse> getMetricas_Pre($grpc.ServiceCall call,
      $async.Future<$0.getMetricasRequest> request) async {
    return getMetricas(call, await request);
  }

  $async.Future<$0.referenteLoginResponse> referenteLogin_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.referenteLoginRequest> request) async {
    return referenteLogin(call, await request);
  }

  $async.Future<$0.refCambiarClaveResponse> refCambiarClave_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.refCambiarClaveRequest> request) async {
    return refCambiarClave(call, await request);
  }

  $async.Future<$0.getProductosResponse> getProductos_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.getProductosRequest> request) async {
    return getProductos(call, await request);
  }

  $async.Future<$0.registerVistaStoriesResponse> registerVistaStories_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.registerVistaStoriesRequest> request) async {
    return registerVistaStories(call, await request);
  }

  $async.Future<$0.landingConfigResponse> ladingConfig(
      $grpc.ServiceCall call, $0.landingConfigRequest request);
  $async.Future<$0.otpResponse> otp(
      $grpc.ServiceCall call, $0.otpRequest request);
  $async.Future<$0.checkOtpResponse> checkOtp(
      $grpc.ServiceCall call, $0.checkOtpRequest request);
  $async.Future<$0.pingResponse> pingPong(
      $grpc.ServiceCall call, $0.pingRequest request);
  $async.Future<$0.referenteRegisterResponse> referenteRegister(
      $grpc.ServiceCall call, $0.referenteRegisterRequest request);
  $async.Future<$0.getReferenteResponse> getReferente(
      $grpc.ServiceCall call, $0.getReferenteRequest request);
  $async.Future<$0.getReferenteByEmailResponse> getReferenteByEmail(
      $grpc.ServiceCall call, $0.getReferenteByEmailRequest request);
  $async.Future<$0.referenteUpdateResponse> referenteUpdate(
      $grpc.ServiceCall call, $0.referenteUpdateRequest request);
  $async.Future<$0.refAppRecomendadoResponse> refAppRecomendado(
      $grpc.ServiceCall call, $0.refAppRecomendadoRequest request);
  $async.Future<$0.asignarPuntosResponse> asignarPuntos(
      $grpc.ServiceCall call, $0.asignarPuntosRequest request);
  $async.Stream<$0.medioPagoResponse> getMediosPagos(
      $grpc.ServiceCall call, $0.medioPagoRequest request);
  $async.Stream<$0.recursosResponse> getRecursos(
      $grpc.ServiceCall call, $0.recursosRequest request);
  $async.Future<$0.mensajeContactosResponse> mensajeContactosRegister(
      $grpc.ServiceCall call, $0.mensajeContactosRequest request);
  $async.Stream<$0.subProductosResponse> getSubproductos(
      $grpc.ServiceCall call, $0.subProductosRequest request);
  $async.Future<$0.subProductoByIdResponse> getSubproductoById(
      $grpc.ServiceCall call, $0.subProductoByIdRequest request);
  $async.Future<$0.saveRefSubproductoResponse> saveRefSubproducto(
      $grpc.ServiceCall call, $0.saveRefSubproductoRequest request);
  $async.Future<$0.productoByIdResponse> getProductoById(
      $grpc.ServiceCall call, $0.productoByIdRequest request);
  $async.Future<$0.getMensajeContactosResponse> getMensajeContactos(
      $grpc.ServiceCall call, $0.getMensajeContactosRequest request);
  $async.Future<$0.getReferenciasSubprResponse> getReferenciasSubpr(
      $grpc.ServiceCall call, $0.getReferenciasSubprRequest request);
  $async.Future<$0.saveRefEmpresaResponse> saveRefEmpresa(
      $grpc.ServiceCall call, $0.saveRefEmpresaRequest request);
  $async.Future<$0.getReferenciasEmprResponse> getReferenciasEmpresas(
      $grpc.ServiceCall call, $0.getReferenciasEmprRequest request);
  $async.Future<$0.getMetricasResponse> getMetricas(
      $grpc.ServiceCall call, $0.getMetricasRequest request);
  $async.Future<$0.referenteLoginResponse> referenteLogin(
      $grpc.ServiceCall call, $0.referenteLoginRequest request);
  $async.Future<$0.refCambiarClaveResponse> refCambiarClave(
      $grpc.ServiceCall call, $0.refCambiarClaveRequest request);
  $async.Future<$0.getProductosResponse> getProductos(
      $grpc.ServiceCall call, $0.getProductosRequest request);
  $async.Future<$0.registerVistaStoriesResponse> registerVistaStories(
      $grpc.ServiceCall call, $0.registerVistaStoriesRequest request);
}
