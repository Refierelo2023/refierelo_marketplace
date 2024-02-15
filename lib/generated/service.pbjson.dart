//
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use pingRequestDescriptor instead')
const pingRequest$json = const {
  '1': 'pingRequest',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `pingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingRequestDescriptor = $convert.base64Decode('CgtwaW5nUmVxdWVzdBIYCgdtZXNzYWdlGAEgASgJUgdtZXNzYWdl');
@$core.Deprecated('Use pingResponseDescriptor instead')
const pingResponse$json = const {
  '1': 'pingResponse',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `pingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingResponseDescriptor = $convert.base64Decode('CgxwaW5nUmVzcG9uc2USGAoHbWVzc2FnZRgBIAEoCVIHbWVzc2FnZQ==');
@$core.Deprecated('Use landingConfigRequestDescriptor instead')
const landingConfigRequest$json = const {
  '1': 'landingConfigRequest',
  '2': const [
    const {'1': 'flag', '3': 1, '4': 1, '5': 9, '10': 'flag'},
  ],
};

/// Descriptor for `landingConfigRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List landingConfigRequestDescriptor = $convert.base64Decode('ChRsYW5kaW5nQ29uZmlnUmVxdWVzdBISCgRmbGFnGAEgASgJUgRmbGFn');
@$core.Deprecated('Use landingConfigResponseDescriptor instead')
const landingConfigResponse$json = const {
  '1': 'landingConfigResponse',
  '2': const [
    const {'1': 'backgroundUrl', '3': 1, '4': 1, '5': 9, '10': 'backgroundUrl'},
    const {'1': 'welcomeMessage', '3': 2, '4': 1, '5': 9, '10': 'welcomeMessage'},
  ],
};

/// Descriptor for `landingConfigResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List landingConfigResponseDescriptor = $convert.base64Decode('ChVsYW5kaW5nQ29uZmlnUmVzcG9uc2USJAoNYmFja2dyb3VuZFVybBgBIAEoCVINYmFja2dyb3VuZFVybBImCg53ZWxjb21lTWVzc2FnZRgCIAEoCVIOd2VsY29tZU1lc3NhZ2U=');
@$core.Deprecated('Use otpRequestDescriptor instead')
const otpRequest$json = const {
  '1': 'otpRequest',
  '2': const [
    const {'1': 'msisdn', '3': 1, '4': 1, '5': 9, '10': 'msisdn'},
    const {'1': 'login', '3': 2, '4': 1, '5': 8, '10': 'login'},
  ],
};

/// Descriptor for `otpRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List otpRequestDescriptor = $convert.base64Decode('CgpvdHBSZXF1ZXN0EhYKBm1zaXNkbhgBIAEoCVIGbXNpc2RuEhQKBWxvZ2luGAIgASgIUgVsb2dpbg==');
@$core.Deprecated('Use otpResponseDescriptor instead')
const otpResponse$json = const {
  '1': 'otpResponse',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `otpResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List otpResponseDescriptor = $convert.base64Decode('CgtvdHBSZXNwb25zZRIYCgdtZXNzYWdlGAEgASgJUgdtZXNzYWdl');
@$core.Deprecated('Use checkOtpRequestDescriptor instead')
const checkOtpRequest$json = const {
  '1': 'checkOtpRequest',
  '2': const [
    const {'1': 'msisdn', '3': 1, '4': 1, '5': 9, '10': 'msisdn'},
    const {'1': 'otp', '3': 2, '4': 1, '5': 9, '10': 'otp'},
  ],
};

/// Descriptor for `checkOtpRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkOtpRequestDescriptor = $convert.base64Decode('Cg9jaGVja090cFJlcXVlc3QSFgoGbXNpc2RuGAEgASgJUgZtc2lzZG4SEAoDb3RwGAIgASgJUgNvdHA=');
@$core.Deprecated('Use checkOtpResponseDescriptor instead')
const checkOtpResponse$json = const {
  '1': 'checkOtpResponse',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `checkOtpResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkOtpResponseDescriptor = $convert.base64Decode('ChBjaGVja090cFJlc3BvbnNlEhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2U=');
@$core.Deprecated('Use referenteRegisterRequestDescriptor instead')
const referenteRegisterRequest$json = const {
  '1': 'referenteRegisterRequest',
  '2': const [
    const {'1': 'msisdn', '3': 1, '4': 1, '5': 9, '10': 'msisdn'},
    const {'1': 'apellidos', '3': 2, '4': 1, '5': 9, '10': 'apellidos'},
    const {'1': 'nombres', '3': 3, '4': 1, '5': 9, '10': 'nombres'},
    const {'1': 'mail', '3': 4, '4': 1, '5': 9, '10': 'mail'},
    const {'1': 'fechaNacimiento', '3': 5, '4': 1, '5': 9, '10': 'fechaNacimiento'},
    const {'1': 'ciudad', '3': 6, '4': 1, '5': 9, '10': 'ciudad'},
    const {'1': 'mediosPagos', '3': 7, '4': 1, '5': 9, '10': 'mediosPagos'},
    const {'1': 'entidadFinanciera', '3': 8, '4': 1, '5': 9, '10': 'entidadFinanciera'},
    const {'1': 'tipoCuenta', '3': 9, '4': 1, '5': 9, '10': 'tipoCuenta'},
    const {'1': 'clave', '3': 10, '4': 1, '5': 9, '10': 'clave'},
    const {'1': 'sessionString', '3': 11, '4': 1, '5': 9, '10': 'sessionString'},
    const {'1': 'date', '3': 12, '4': 1, '5': 9, '10': 'date'},
    const {'1': 'identificacion', '3': 13, '4': 1, '5': 9, '10': 'identificacion'},
  ],
};

/// Descriptor for `referenteRegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List referenteRegisterRequestDescriptor = $convert.base64Decode('ChhyZWZlcmVudGVSZWdpc3RlclJlcXVlc3QSFgoGbXNpc2RuGAEgASgJUgZtc2lzZG4SHAoJYXBlbGxpZG9zGAIgASgJUglhcGVsbGlkb3MSGAoHbm9tYnJlcxgDIAEoCVIHbm9tYnJlcxISCgRtYWlsGAQgASgJUgRtYWlsEigKD2ZlY2hhTmFjaW1pZW50bxgFIAEoCVIPZmVjaGFOYWNpbWllbnRvEhYKBmNpdWRhZBgGIAEoCVIGY2l1ZGFkEiAKC21lZGlvc1BhZ29zGAcgASgJUgttZWRpb3NQYWdvcxIsChFlbnRpZGFkRmluYW5jaWVyYRgIIAEoCVIRZW50aWRhZEZpbmFuY2llcmESHgoKdGlwb0N1ZW50YRgJIAEoCVIKdGlwb0N1ZW50YRIUCgVjbGF2ZRgKIAEoCVIFY2xhdmUSJAoNc2Vzc2lvblN0cmluZxgLIAEoCVINc2Vzc2lvblN0cmluZxISCgRkYXRlGAwgASgJUgRkYXRlEiYKDmlkZW50aWZpY2FjaW9uGA0gASgJUg5pZGVudGlmaWNhY2lvbg==');
@$core.Deprecated('Use referenteRegisterResponseDescriptor instead')
const referenteRegisterResponse$json = const {
  '1': 'referenteRegisterResponse',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `referenteRegisterResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List referenteRegisterResponseDescriptor = $convert.base64Decode('ChlyZWZlcmVudGVSZWdpc3RlclJlc3BvbnNlEhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2U=');
@$core.Deprecated('Use getReferenteRequestDescriptor instead')
const getReferenteRequest$json = const {
  '1': 'getReferenteRequest',
  '2': const [
    const {'1': 'sessionString', '3': 1, '4': 1, '5': 9, '10': 'sessionString'},
  ],
};

/// Descriptor for `getReferenteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getReferenteRequestDescriptor = $convert.base64Decode('ChNnZXRSZWZlcmVudGVSZXF1ZXN0EiQKDXNlc3Npb25TdHJpbmcYASABKAlSDXNlc3Npb25TdHJpbmc=');
@$core.Deprecated('Use getReferenteResponseDescriptor instead')
const getReferenteResponse$json = const {
  '1': 'getReferenteResponse',
  '2': const [
    const {'1': 'apellidos', '3': 1, '4': 1, '5': 9, '10': 'apellidos'},
    const {'1': 'nombres', '3': 2, '4': 1, '5': 9, '10': 'nombres'},
    const {'1': 'mail', '3': 3, '4': 1, '5': 9, '10': 'mail'},
    const {'1': 'fechaNacimiento', '3': 4, '4': 1, '5': 9, '10': 'fechaNacimiento'},
    const {'1': 'ciudad', '3': 5, '4': 1, '5': 9, '10': 'ciudad'},
    const {'1': 'idMediosPagos', '3': 6, '4': 1, '5': 9, '10': 'idMediosPagos'},
    const {'1': 'entidadFinanciera', '3': 7, '4': 1, '5': 9, '10': 'entidadFinanciera'},
    const {'1': 'puntos', '3': 8, '4': 1, '5': 9, '10': 'puntos'},
    const {'1': 'puntosFechaVencimiento', '3': 9, '4': 1, '5': 9, '10': 'puntosFechaVencimiento'},
    const {'1': 'msisdn', '3': 10, '4': 1, '5': 9, '10': 'msisdn'},
    const {'1': 'codigoReferente', '3': 11, '4': 1, '5': 9, '10': 'codigoReferente'},
    const {'1': 'idreferente', '3': 12, '4': 1, '5': 5, '10': 'idreferente'},
    const {'1': 'msisdnRecomendado', '3': 13, '4': 1, '5': 9, '10': 'msisdnRecomendado'},
    const {'1': 'idTipoCuentaReferente', '3': 14, '4': 1, '5': 9, '10': 'idTipoCuentaReferente'},
    const {'1': 'sessionString', '3': 15, '4': 1, '5': 9, '10': 'sessionString'},
    const {'1': 'identificacion', '3': 16, '4': 1, '5': 9, '10': 'identificacion'},
    const {'1': 'puntosEnProceso', '3': 17, '4': 1, '5': 5, '10': 'puntosEnProceso'},
  ],
};

/// Descriptor for `getReferenteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getReferenteResponseDescriptor = $convert.base64Decode('ChRnZXRSZWZlcmVudGVSZXNwb25zZRIcCglhcGVsbGlkb3MYASABKAlSCWFwZWxsaWRvcxIYCgdub21icmVzGAIgASgJUgdub21icmVzEhIKBG1haWwYAyABKAlSBG1haWwSKAoPZmVjaGFOYWNpbWllbnRvGAQgASgJUg9mZWNoYU5hY2ltaWVudG8SFgoGY2l1ZGFkGAUgASgJUgZjaXVkYWQSJAoNaWRNZWRpb3NQYWdvcxgGIAEoCVINaWRNZWRpb3NQYWdvcxIsChFlbnRpZGFkRmluYW5jaWVyYRgHIAEoCVIRZW50aWRhZEZpbmFuY2llcmESFgoGcHVudG9zGAggASgJUgZwdW50b3MSNgoWcHVudG9zRmVjaGFWZW5jaW1pZW50bxgJIAEoCVIWcHVudG9zRmVjaGFWZW5jaW1pZW50bxIWCgZtc2lzZG4YCiABKAlSBm1zaXNkbhIoCg9jb2RpZ29SZWZlcmVudGUYCyABKAlSD2NvZGlnb1JlZmVyZW50ZRIgCgtpZHJlZmVyZW50ZRgMIAEoBVILaWRyZWZlcmVudGUSLAoRbXNpc2RuUmVjb21lbmRhZG8YDSABKAlSEW1zaXNkblJlY29tZW5kYWRvEjQKFWlkVGlwb0N1ZW50YVJlZmVyZW50ZRgOIAEoCVIVaWRUaXBvQ3VlbnRhUmVmZXJlbnRlEiQKDXNlc3Npb25TdHJpbmcYDyABKAlSDXNlc3Npb25TdHJpbmcSJgoOaWRlbnRpZmljYWNpb24YECABKAlSDmlkZW50aWZpY2FjaW9uEigKD3B1bnRvc0VuUHJvY2VzbxgRIAEoBVIPcHVudG9zRW5Qcm9jZXNv');
@$core.Deprecated('Use getReferenteByEmailRequestDescriptor instead')
const getReferenteByEmailRequest$json = const {
  '1': 'getReferenteByEmailRequest',
  '2': const [
    const {'1': 'mail', '3': 1, '4': 1, '5': 9, '10': 'mail'},
  ],
};

/// Descriptor for `getReferenteByEmailRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getReferenteByEmailRequestDescriptor = $convert.base64Decode('ChpnZXRSZWZlcmVudGVCeUVtYWlsUmVxdWVzdBISCgRtYWlsGAEgASgJUgRtYWls');
@$core.Deprecated('Use getReferenteByEmailResponseDescriptor instead')
const getReferenteByEmailResponse$json = const {
  '1': 'getReferenteByEmailResponse',
  '2': const [
    const {'1': 'apellidos', '3': 1, '4': 1, '5': 9, '10': 'apellidos'},
    const {'1': 'nombres', '3': 2, '4': 1, '5': 9, '10': 'nombres'},
    const {'1': 'mail', '3': 3, '4': 1, '5': 9, '10': 'mail'},
    const {'1': 'fechaNacimiento', '3': 4, '4': 1, '5': 9, '10': 'fechaNacimiento'},
    const {'1': 'ciudad', '3': 5, '4': 1, '5': 9, '10': 'ciudad'},
    const {'1': 'idMediosPagos', '3': 6, '4': 1, '5': 9, '10': 'idMediosPagos'},
    const {'1': 'entidadFinanciera', '3': 7, '4': 1, '5': 9, '10': 'entidadFinanciera'},
    const {'1': 'puntos', '3': 8, '4': 1, '5': 9, '10': 'puntos'},
    const {'1': 'puntosFechaVencimiento', '3': 9, '4': 1, '5': 9, '10': 'puntosFechaVencimiento'},
    const {'1': 'msisdn', '3': 10, '4': 1, '5': 9, '10': 'msisdn'},
    const {'1': 'codigoReferente', '3': 11, '4': 1, '5': 9, '10': 'codigoReferente'},
    const {'1': 'idreferente', '3': 12, '4': 1, '5': 5, '10': 'idreferente'},
    const {'1': 'msisdnRecomendado', '3': 13, '4': 1, '5': 9, '10': 'msisdnRecomendado'},
    const {'1': 'idTipoCuentaReferente', '3': 14, '4': 1, '5': 9, '10': 'idTipoCuentaReferente'},
    const {'1': 'sessionString', '3': 15, '4': 1, '5': 9, '10': 'sessionString'},
    const {'1': 'identificacion', '3': 16, '4': 1, '5': 9, '10': 'identificacion'},
    const {'1': 'puntosEnProceso', '3': 17, '4': 1, '5': 5, '10': 'puntosEnProceso'},
  ],
};

/// Descriptor for `getReferenteByEmailResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getReferenteByEmailResponseDescriptor = $convert.base64Decode('ChtnZXRSZWZlcmVudGVCeUVtYWlsUmVzcG9uc2USHAoJYXBlbGxpZG9zGAEgASgJUglhcGVsbGlkb3MSGAoHbm9tYnJlcxgCIAEoCVIHbm9tYnJlcxISCgRtYWlsGAMgASgJUgRtYWlsEigKD2ZlY2hhTmFjaW1pZW50bxgEIAEoCVIPZmVjaGFOYWNpbWllbnRvEhYKBmNpdWRhZBgFIAEoCVIGY2l1ZGFkEiQKDWlkTWVkaW9zUGFnb3MYBiABKAlSDWlkTWVkaW9zUGFnb3MSLAoRZW50aWRhZEZpbmFuY2llcmEYByABKAlSEWVudGlkYWRGaW5hbmNpZXJhEhYKBnB1bnRvcxgIIAEoCVIGcHVudG9zEjYKFnB1bnRvc0ZlY2hhVmVuY2ltaWVudG8YCSABKAlSFnB1bnRvc0ZlY2hhVmVuY2ltaWVudG8SFgoGbXNpc2RuGAogASgJUgZtc2lzZG4SKAoPY29kaWdvUmVmZXJlbnRlGAsgASgJUg9jb2RpZ29SZWZlcmVudGUSIAoLaWRyZWZlcmVudGUYDCABKAVSC2lkcmVmZXJlbnRlEiwKEW1zaXNkblJlY29tZW5kYWRvGA0gASgJUhFtc2lzZG5SZWNvbWVuZGFkbxI0ChVpZFRpcG9DdWVudGFSZWZlcmVudGUYDiABKAlSFWlkVGlwb0N1ZW50YVJlZmVyZW50ZRIkCg1zZXNzaW9uU3RyaW5nGA8gASgJUg1zZXNzaW9uU3RyaW5nEiYKDmlkZW50aWZpY2FjaW9uGBAgASgJUg5pZGVudGlmaWNhY2lvbhIoCg9wdW50b3NFblByb2Nlc28YESABKAVSD3B1bnRvc0VuUHJvY2Vzbw==');
@$core.Deprecated('Use referenteUpdateRequestDescriptor instead')
const referenteUpdateRequest$json = const {
  '1': 'referenteUpdateRequest',
  '2': const [
    const {'1': 'sessionString', '3': 1, '4': 1, '5': 9, '10': 'sessionString'},
    const {'1': 'apellidos', '3': 2, '4': 1, '5': 9, '10': 'apellidos'},
    const {'1': 'nombres', '3': 3, '4': 1, '5': 9, '10': 'nombres'},
    const {'1': 'msisdn', '3': 5, '4': 1, '5': 9, '10': 'msisdn'},
    const {'1': 'mail', '3': 6, '4': 1, '5': 9, '10': 'mail'},
    const {'1': 'fechaNacimiento', '3': 7, '4': 1, '5': 9, '10': 'fechaNacimiento'},
    const {'1': 'ciudad', '3': 8, '4': 1, '5': 9, '10': 'ciudad'},
    const {'1': 'idMediosPagos', '3': 9, '4': 1, '5': 9, '10': 'idMediosPagos'},
    const {'1': 'entidadFinanciera', '3': 10, '4': 1, '5': 9, '10': 'entidadFinanciera'},
    const {'1': 'clave', '3': 11, '4': 1, '5': 9, '10': 'clave'},
    const {'1': 'msisdnRecomendado', '3': 12, '4': 1, '5': 9, '10': 'msisdnRecomendado'},
    const {'1': 'idreferente', '3': 13, '4': 1, '5': 9, '10': 'idreferente'},
    const {'1': 'date', '3': 14, '4': 1, '5': 9, '10': 'date'},
    const {'1': 'identificacion', '3': 15, '4': 1, '5': 9, '10': 'identificacion'},
  ],
};

/// Descriptor for `referenteUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List referenteUpdateRequestDescriptor = $convert.base64Decode('ChZyZWZlcmVudGVVcGRhdGVSZXF1ZXN0EiQKDXNlc3Npb25TdHJpbmcYASABKAlSDXNlc3Npb25TdHJpbmcSHAoJYXBlbGxpZG9zGAIgASgJUglhcGVsbGlkb3MSGAoHbm9tYnJlcxgDIAEoCVIHbm9tYnJlcxIWCgZtc2lzZG4YBSABKAlSBm1zaXNkbhISCgRtYWlsGAYgASgJUgRtYWlsEigKD2ZlY2hhTmFjaW1pZW50bxgHIAEoCVIPZmVjaGFOYWNpbWllbnRvEhYKBmNpdWRhZBgIIAEoCVIGY2l1ZGFkEiQKDWlkTWVkaW9zUGFnb3MYCSABKAlSDWlkTWVkaW9zUGFnb3MSLAoRZW50aWRhZEZpbmFuY2llcmEYCiABKAlSEWVudGlkYWRGaW5hbmNpZXJhEhQKBWNsYXZlGAsgASgJUgVjbGF2ZRIsChFtc2lzZG5SZWNvbWVuZGFkbxgMIAEoCVIRbXNpc2RuUmVjb21lbmRhZG8SIAoLaWRyZWZlcmVudGUYDSABKAlSC2lkcmVmZXJlbnRlEhIKBGRhdGUYDiABKAlSBGRhdGUSJgoOaWRlbnRpZmljYWNpb24YDyABKAlSDmlkZW50aWZpY2FjaW9u');
@$core.Deprecated('Use referenteUpdateResponseDescriptor instead')
const referenteUpdateResponse$json = const {
  '1': 'referenteUpdateResponse',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'puntos', '3': 2, '4': 1, '5': 9, '10': 'puntos'},
  ],
};

/// Descriptor for `referenteUpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List referenteUpdateResponseDescriptor = $convert.base64Decode('ChdyZWZlcmVudGVVcGRhdGVSZXNwb25zZRIYCgdtZXNzYWdlGAEgASgJUgdtZXNzYWdlEhYKBnB1bnRvcxgCIAEoCVIGcHVudG9z');
@$core.Deprecated('Use refAppRecomendadoRequestDescriptor instead')
const refAppRecomendadoRequest$json = const {
  '1': 'refAppRecomendadoRequest',
  '2': const [
    const {'1': 'sessionString', '3': 1, '4': 1, '5': 9, '10': 'sessionString'},
    const {'1': 'idreferente', '3': 2, '4': 1, '5': 9, '10': 'idreferente'},
    const {'1': 'msisdnRecomendado', '3': 3, '4': 1, '5': 9, '10': 'msisdnRecomendado'},
    const {'1': 'date', '3': 4, '4': 1, '5': 9, '10': 'date'},
  ],
};

/// Descriptor for `refAppRecomendadoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refAppRecomendadoRequestDescriptor = $convert.base64Decode('ChhyZWZBcHBSZWNvbWVuZGFkb1JlcXVlc3QSJAoNc2Vzc2lvblN0cmluZxgBIAEoCVINc2Vzc2lvblN0cmluZxIgCgtpZHJlZmVyZW50ZRgCIAEoCVILaWRyZWZlcmVudGUSLAoRbXNpc2RuUmVjb21lbmRhZG8YAyABKAlSEW1zaXNkblJlY29tZW5kYWRvEhIKBGRhdGUYBCABKAlSBGRhdGU=');
@$core.Deprecated('Use refAppRecomendadoResponseDescriptor instead')
const refAppRecomendadoResponse$json = const {
  '1': 'refAppRecomendadoResponse',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'puntos', '3': 8, '4': 1, '5': 9, '10': 'puntos'},
  ],
};

/// Descriptor for `refAppRecomendadoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refAppRecomendadoResponseDescriptor = $convert.base64Decode('ChlyZWZBcHBSZWNvbWVuZGFkb1Jlc3BvbnNlEhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2USFgoGcHVudG9zGAggASgJUgZwdW50b3M=');
@$core.Deprecated('Use asignarPuntosRequestDescriptor instead')
const asignarPuntosRequest$json = const {
  '1': 'asignarPuntosRequest',
  '2': const [
    const {'1': 'sessionString', '3': 1, '4': 1, '5': 9, '10': 'sessionString'},
    const {'1': 'configCodigo', '3': 2, '4': 1, '5': 9, '10': 'configCodigo'},
    const {'1': 'date', '3': 3, '4': 1, '5': 9, '10': 'date'},
    const {'1': 'idRecurso', '3': 4, '4': 1, '5': 5, '10': 'idRecurso'},
  ],
};

/// Descriptor for `asignarPuntosRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List asignarPuntosRequestDescriptor = $convert.base64Decode('ChRhc2lnbmFyUHVudG9zUmVxdWVzdBIkCg1zZXNzaW9uU3RyaW5nGAEgASgJUg1zZXNzaW9uU3RyaW5nEiIKDGNvbmZpZ0NvZGlnbxgCIAEoCVIMY29uZmlnQ29kaWdvEhIKBGRhdGUYAyABKAlSBGRhdGUSHAoJaWRSZWN1cnNvGAQgASgFUglpZFJlY3Vyc28=');
@$core.Deprecated('Use asignarPuntosResponseDescriptor instead')
const asignarPuntosResponse$json = const {
  '1': 'asignarPuntosResponse',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'puntos', '3': 2, '4': 1, '5': 9, '10': 'puntos'},
  ],
};

/// Descriptor for `asignarPuntosResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List asignarPuntosResponseDescriptor = $convert.base64Decode('ChVhc2lnbmFyUHVudG9zUmVzcG9uc2USGAoHbWVzc2FnZRgBIAEoCVIHbWVzc2FnZRIWCgZwdW50b3MYAiABKAlSBnB1bnRvcw==');
@$core.Deprecated('Use medioPagoRequestDescriptor instead')
const medioPagoRequest$json = const {
  '1': 'medioPagoRequest',
  '2': const [
    const {'1': 'sessionString', '3': 1, '4': 1, '5': 9, '10': 'sessionString'},
  ],
};

/// Descriptor for `medioPagoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List medioPagoRequestDescriptor = $convert.base64Decode('ChBtZWRpb1BhZ29SZXF1ZXN0EiQKDXNlc3Npb25TdHJpbmcYASABKAlSDXNlc3Npb25TdHJpbmc=');
@$core.Deprecated('Use medioPagoResponseDescriptor instead')
const medioPagoResponse$json = const {
  '1': 'medioPagoResponse',
  '2': const [
    const {'1': 'idMedioPago', '3': 1, '4': 1, '5': 9, '10': 'idMedioPago'},
    const {'1': 'medioPago', '3': 2, '4': 1, '5': 9, '10': 'medioPago'},
  ],
};

/// Descriptor for `medioPagoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List medioPagoResponseDescriptor = $convert.base64Decode('ChFtZWRpb1BhZ29SZXNwb25zZRIgCgtpZE1lZGlvUGFnbxgBIAEoCVILaWRNZWRpb1BhZ28SHAoJbWVkaW9QYWdvGAIgASgJUgltZWRpb1BhZ28=');
@$core.Deprecated('Use pruebaRequestDescriptor instead')
const pruebaRequest$json = const {
  '1': 'pruebaRequest',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `pruebaRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pruebaRequestDescriptor = $convert.base64Decode('Cg1wcnVlYmFSZXF1ZXN0EhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2U=');
@$core.Deprecated('Use pruebaResponseDescriptor instead')
const pruebaResponse$json = const {
  '1': 'pruebaResponse',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `pruebaResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pruebaResponseDescriptor = $convert.base64Decode('Cg5wcnVlYmFSZXNwb25zZRIYCgdtZXNzYWdlGAEgASgJUgdtZXNzYWdl');
@$core.Deprecated('Use recursosRequestDescriptor instead')
const recursosRequest$json = const {
  '1': 'recursosRequest',
  '2': const [
    const {'1': 'idComponente', '3': 1, '4': 1, '5': 5, '10': 'idComponente'},
    const {'1': 'sessionString', '3': 2, '4': 1, '5': 9, '10': 'sessionString'},
    const {'1': 'idreferente', '3': 3, '4': 1, '5': 5, '10': 'idreferente'},
  ],
};

/// Descriptor for `recursosRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recursosRequestDescriptor = $convert.base64Decode('Cg9yZWN1cnNvc1JlcXVlc3QSIgoMaWRDb21wb25lbnRlGAEgASgFUgxpZENvbXBvbmVudGUSJAoNc2Vzc2lvblN0cmluZxgCIAEoCVINc2Vzc2lvblN0cmluZxIgCgtpZHJlZmVyZW50ZRgDIAEoBVILaWRyZWZlcmVudGU=');
@$core.Deprecated('Use recursosResponseDescriptor instead')
const recursosResponse$json = const {
  '1': 'recursosResponse',
  '2': const [
    const {'1': 'idRecurso', '3': 1, '4': 1, '5': 5, '10': 'idRecurso'},
    const {'1': 'idComponente', '3': 2, '4': 1, '5': 5, '10': 'idComponente'},
    const {'1': 'estado', '3': 3, '4': 1, '5': 5, '10': 'estado'},
    const {'1': 'path', '3': 4, '4': 1, '5': 9, '10': 'path'},
    const {'1': 'cantidad', '3': 5, '4': 1, '5': 5, '10': 'cantidad'},
    const {'1': 'configCodigo', '3': 6, '4': 1, '5': 9, '10': 'configCodigo'},
    const {'1': 'tipoRecurso', '3': 7, '4': 1, '5': 9, '10': 'tipoRecurso'},
    const {'1': 'hideOnShared', '3': 8, '4': 1, '5': 8, '10': 'hideOnShared'},
    const {'1': 'compartido', '3': 9, '4': 1, '5': 5, '10': 'compartido'},
  ],
};

/// Descriptor for `recursosResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recursosResponseDescriptor = $convert.base64Decode('ChByZWN1cnNvc1Jlc3BvbnNlEhwKCWlkUmVjdXJzbxgBIAEoBVIJaWRSZWN1cnNvEiIKDGlkQ29tcG9uZW50ZRgCIAEoBVIMaWRDb21wb25lbnRlEhYKBmVzdGFkbxgDIAEoBVIGZXN0YWRvEhIKBHBhdGgYBCABKAlSBHBhdGgSGgoIY2FudGlkYWQYBSABKAVSCGNhbnRpZGFkEiIKDGNvbmZpZ0NvZGlnbxgGIAEoCVIMY29uZmlnQ29kaWdvEiAKC3RpcG9SZWN1cnNvGAcgASgJUgt0aXBvUmVjdXJzbxIiCgxoaWRlT25TaGFyZWQYCCABKAhSDGhpZGVPblNoYXJlZBIeCgpjb21wYXJ0aWRvGAkgASgFUgpjb21wYXJ0aWRv');
@$core.Deprecated('Use mensajeContactosRequestDescriptor instead')
const mensajeContactosRequest$json = const {
  '1': 'mensajeContactosRequest',
  '2': const [
    const {'1': 'sessionString', '3': 1, '4': 1, '5': 9, '10': 'sessionString'},
    const {'1': 'nombreContacto', '3': 2, '4': 1, '5': 9, '10': 'nombreContacto'},
    const {'1': 'numeroTelefono', '3': 3, '4': 1, '5': 9, '10': 'numeroTelefono'},
  ],
};

/// Descriptor for `mensajeContactosRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mensajeContactosRequestDescriptor = $convert.base64Decode('ChdtZW5zYWplQ29udGFjdG9zUmVxdWVzdBIkCg1zZXNzaW9uU3RyaW5nGAEgASgJUg1zZXNzaW9uU3RyaW5nEiYKDm5vbWJyZUNvbnRhY3RvGAIgASgJUg5ub21icmVDb250YWN0bxImCg5udW1lcm9UZWxlZm9ubxgDIAEoCVIObnVtZXJvVGVsZWZvbm8=');
@$core.Deprecated('Use mensajeContactosResponseDescriptor instead')
const mensajeContactosResponse$json = const {
  '1': 'mensajeContactosResponse',
  '2': const [
    const {'1': 'mensaje', '3': 1, '4': 1, '5': 9, '10': 'mensaje'},
  ],
};

/// Descriptor for `mensajeContactosResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mensajeContactosResponseDescriptor = $convert.base64Decode('ChhtZW5zYWplQ29udGFjdG9zUmVzcG9uc2USGAoHbWVuc2FqZRgBIAEoCVIHbWVuc2FqZQ==');
@$core.Deprecated('Use subProductosRequestDescriptor instead')
const subProductosRequest$json = const {
  '1': 'subProductosRequest',
  '2': const [
    const {'1': 'sessionString', '3': 1, '4': 1, '5': 9, '10': 'sessionString'},
    const {'1': 'idProducto', '3': 2, '4': 1, '5': 9, '10': 'idProducto'},
  ],
};

/// Descriptor for `subProductosRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subProductosRequestDescriptor = $convert.base64Decode('ChNzdWJQcm9kdWN0b3NSZXF1ZXN0EiQKDXNlc3Npb25TdHJpbmcYASABKAlSDXNlc3Npb25TdHJpbmcSHgoKaWRQcm9kdWN0bxgCIAEoCVIKaWRQcm9kdWN0bw==');
@$core.Deprecated('Use subProductosResponseDescriptor instead')
const subProductosResponse$json = const {
  '1': 'subProductosResponse',
  '2': const [
    const {'1': 'idSubproducto', '3': 1, '4': 1, '5': 5, '10': 'idSubproducto'},
    const {'1': 'idProducto', '3': 2, '4': 1, '5': 5, '10': 'idProducto'},
    const {'1': 'nombreSubpr', '3': 3, '4': 1, '5': 9, '10': 'nombreSubpr'},
    const {'1': 'idConfigPuntos', '3': 4, '4': 1, '5': 5, '10': 'idConfigPuntos'},
    const {'1': 'pathImagen', '3': 5, '4': 1, '5': 9, '10': 'pathImagen'},
    const {'1': 'configCodigo', '3': 6, '4': 1, '5': 9, '10': 'configCodigo'},
    const {'1': 'cantidad', '3': 7, '4': 1, '5': 5, '10': 'cantidad'},
    const {'1': 'amarillo', '3': 8, '4': 1, '5': 5, '10': 'amarillo'},
  ],
};

/// Descriptor for `subProductosResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subProductosResponseDescriptor = $convert.base64Decode('ChRzdWJQcm9kdWN0b3NSZXNwb25zZRIkCg1pZFN1YnByb2R1Y3RvGAEgASgFUg1pZFN1YnByb2R1Y3RvEh4KCmlkUHJvZHVjdG8YAiABKAVSCmlkUHJvZHVjdG8SIAoLbm9tYnJlU3VicHIYAyABKAlSC25vbWJyZVN1YnByEiYKDmlkQ29uZmlnUHVudG9zGAQgASgFUg5pZENvbmZpZ1B1bnRvcxIeCgpwYXRoSW1hZ2VuGAUgASgJUgpwYXRoSW1hZ2VuEiIKDGNvbmZpZ0NvZGlnbxgGIAEoCVIMY29uZmlnQ29kaWdvEhoKCGNhbnRpZGFkGAcgASgFUghjYW50aWRhZBIaCghhbWFyaWxsbxgIIAEoBVIIYW1hcmlsbG8=');
@$core.Deprecated('Use subProductoByIdRequestDescriptor instead')
const subProductoByIdRequest$json = const {
  '1': 'subProductoByIdRequest',
  '2': const [
    const {'1': 'sessionString', '3': 1, '4': 1, '5': 9, '10': 'sessionString'},
    const {'1': 'idSubproducto', '3': 2, '4': 1, '5': 9, '10': 'idSubproducto'},
  ],
};

/// Descriptor for `subProductoByIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subProductoByIdRequestDescriptor = $convert.base64Decode('ChZzdWJQcm9kdWN0b0J5SWRSZXF1ZXN0EiQKDXNlc3Npb25TdHJpbmcYASABKAlSDXNlc3Npb25TdHJpbmcSJAoNaWRTdWJwcm9kdWN0bxgCIAEoCVINaWRTdWJwcm9kdWN0bw==');
@$core.Deprecated('Use subProductoByIdResponseDescriptor instead')
const subProductoByIdResponse$json = const {
  '1': 'subProductoByIdResponse',
  '2': const [
    const {'1': 'idSubproducto', '3': 1, '4': 1, '5': 5, '10': 'idSubproducto'},
    const {'1': 'idProducto', '3': 2, '4': 1, '5': 5, '10': 'idProducto'},
    const {'1': 'nombreSubpr', '3': 3, '4': 1, '5': 9, '10': 'nombreSubpr'},
    const {'1': 'idConfigPuntos', '3': 4, '4': 1, '5': 5, '10': 'idConfigPuntos'},
    const {'1': 'pathImagen', '3': 5, '4': 1, '5': 9, '10': 'pathImagen'},
    const {'1': 'configCodigo', '3': 6, '4': 1, '5': 9, '10': 'configCodigo'},
    const {'1': 'cantidad', '3': 7, '4': 1, '5': 5, '10': 'cantidad'},
  ],
};

/// Descriptor for `subProductoByIdResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subProductoByIdResponseDescriptor = $convert.base64Decode('ChdzdWJQcm9kdWN0b0J5SWRSZXNwb25zZRIkCg1pZFN1YnByb2R1Y3RvGAEgASgFUg1pZFN1YnByb2R1Y3RvEh4KCmlkUHJvZHVjdG8YAiABKAVSCmlkUHJvZHVjdG8SIAoLbm9tYnJlU3VicHIYAyABKAlSC25vbWJyZVN1YnByEiYKDmlkQ29uZmlnUHVudG9zGAQgASgFUg5pZENvbmZpZ1B1bnRvcxIeCgpwYXRoSW1hZ2VuGAUgASgJUgpwYXRoSW1hZ2VuEiIKDGNvbmZpZ0NvZGlnbxgGIAEoCVIMY29uZmlnQ29kaWdvEhoKCGNhbnRpZGFkGAcgASgFUghjYW50aWRhZA==');
@$core.Deprecated('Use saveRefSubproductoRequestDescriptor instead')
const saveRefSubproductoRequest$json = const {
  '1': 'saveRefSubproductoRequest',
  '2': const [
    const {'1': 'sessionString', '3': 1, '4': 1, '5': 9, '10': 'sessionString'},
    const {'1': 'idSubproducto', '3': 2, '4': 1, '5': 9, '10': 'idSubproducto'},
    const {'1': 'nombreApellido', '3': 3, '4': 1, '5': 9, '10': 'nombreApellido'},
    const {'1': 'numeroTelefono', '3': 4, '4': 1, '5': 9, '10': 'numeroTelefono'},
  ],
};

/// Descriptor for `saveRefSubproductoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveRefSubproductoRequestDescriptor = $convert.base64Decode('ChlzYXZlUmVmU3VicHJvZHVjdG9SZXF1ZXN0EiQKDXNlc3Npb25TdHJpbmcYASABKAlSDXNlc3Npb25TdHJpbmcSJAoNaWRTdWJwcm9kdWN0bxgCIAEoCVINaWRTdWJwcm9kdWN0bxImCg5ub21icmVBcGVsbGlkbxgDIAEoCVIObm9tYnJlQXBlbGxpZG8SJgoObnVtZXJvVGVsZWZvbm8YBCABKAlSDm51bWVyb1RlbGVmb25v');
@$core.Deprecated('Use saveRefSubproductoResponseDescriptor instead')
const saveRefSubproductoResponse$json = const {
  '1': 'saveRefSubproductoResponse',
  '2': const [
    const {'1': 'mensaje', '3': 1, '4': 1, '5': 9, '10': 'mensaje'},
    const {'1': 'puntos', '3': 2, '4': 1, '5': 9, '10': 'puntos'},
  ],
};

/// Descriptor for `saveRefSubproductoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveRefSubproductoResponseDescriptor = $convert.base64Decode('ChpzYXZlUmVmU3VicHJvZHVjdG9SZXNwb25zZRIYCgdtZW5zYWplGAEgASgJUgdtZW5zYWplEhYKBnB1bnRvcxgCIAEoCVIGcHVudG9z');
@$core.Deprecated('Use productoByIdRequestDescriptor instead')
const productoByIdRequest$json = const {
  '1': 'productoByIdRequest',
  '2': const [
    const {'1': 'sessionString', '3': 1, '4': 1, '5': 9, '10': 'sessionString'},
    const {'1': 'idProducto', '3': 2, '4': 1, '5': 5, '10': 'idProducto'},
  ],
};

/// Descriptor for `productoByIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List productoByIdRequestDescriptor = $convert.base64Decode('ChNwcm9kdWN0b0J5SWRSZXF1ZXN0EiQKDXNlc3Npb25TdHJpbmcYASABKAlSDXNlc3Npb25TdHJpbmcSHgoKaWRQcm9kdWN0bxgCIAEoBVIKaWRQcm9kdWN0bw==');
@$core.Deprecated('Use productoByIdResponseDescriptor instead')
const productoByIdResponse$json = const {
  '1': 'productoByIdResponse',
  '2': const [
    const {'1': 'idProducto', '3': 1, '4': 1, '5': 5, '10': 'idProducto'},
    const {'1': 'nombreProducto', '3': 2, '4': 1, '5': 9, '10': 'nombreProducto'},
    const {'1': 'imagenProducto', '3': 3, '4': 1, '5': 9, '10': 'imagenProducto'},
    const {'1': 'aliados', '3': 4, '4': 3, '5': 9, '10': 'aliados'},
  ],
};

/// Descriptor for `productoByIdResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List productoByIdResponseDescriptor = $convert.base64Decode('ChRwcm9kdWN0b0J5SWRSZXNwb25zZRIeCgppZFByb2R1Y3RvGAEgASgFUgppZFByb2R1Y3RvEiYKDm5vbWJyZVByb2R1Y3RvGAIgASgJUg5ub21icmVQcm9kdWN0bxImCg5pbWFnZW5Qcm9kdWN0bxgDIAEoCVIOaW1hZ2VuUHJvZHVjdG8SGAoHYWxpYWRvcxgEIAMoCVIHYWxpYWRvcw==');
@$core.Deprecated('Use getMensajeContactosRequestDescriptor instead')
const getMensajeContactosRequest$json = const {
  '1': 'getMensajeContactosRequest',
  '2': const [
    const {'1': 'sessionString', '3': 1, '4': 1, '5': 9, '10': 'sessionString'},
    const {'1': 'pageKey', '3': 2, '4': 1, '5': 9, '10': 'pageKey'},
    const {'1': 'term', '3': 3, '4': 1, '5': 9, '10': 'term'},
  ],
};

/// Descriptor for `getMensajeContactosRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMensajeContactosRequestDescriptor = $convert.base64Decode('ChpnZXRNZW5zYWplQ29udGFjdG9zUmVxdWVzdBIkCg1zZXNzaW9uU3RyaW5nGAEgASgJUg1zZXNzaW9uU3RyaW5nEhgKB3BhZ2VLZXkYAiABKAlSB3BhZ2VLZXkSEgoEdGVybRgDIAEoCVIEdGVybQ==');
@$core.Deprecated('Use mensajeContactoDescriptor instead')
const mensajeContacto$json = const {
  '1': 'mensajeContacto',
  '2': const [
    const {'1': 'idMensContacto', '3': 1, '4': 1, '5': 5, '10': 'idMensContacto'},
    const {'1': 'nombreContacto', '3': 2, '4': 1, '5': 9, '10': 'nombreContacto'},
    const {'1': 'numeroTelefono', '3': 3, '4': 1, '5': 9, '10': 'numeroTelefono'},
    const {'1': 'fechaHoraRegistro', '3': 4, '4': 1, '5': 5, '10': 'fechaHoraRegistro'},
    const {'1': 'fechaHoraEnviado', '3': 5, '4': 1, '5': 5, '10': 'fechaHoraEnviado'},
    const {'1': 'estado', '3': 6, '4': 1, '5': 5, '10': 'estado'},
    const {'1': 'idreferente', '3': 7, '4': 1, '5': 5, '10': 'idreferente'},
    const {'1': 'puntosGanados', '3': 8, '4': 1, '5': 5, '10': 'puntosGanados'},
  ],
};

/// Descriptor for `mensajeContacto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mensajeContactoDescriptor = $convert.base64Decode('Cg9tZW5zYWplQ29udGFjdG8SJgoOaWRNZW5zQ29udGFjdG8YASABKAVSDmlkTWVuc0NvbnRhY3RvEiYKDm5vbWJyZUNvbnRhY3RvGAIgASgJUg5ub21icmVDb250YWN0bxImCg5udW1lcm9UZWxlZm9ubxgDIAEoCVIObnVtZXJvVGVsZWZvbm8SLAoRZmVjaGFIb3JhUmVnaXN0cm8YBCABKAVSEWZlY2hhSG9yYVJlZ2lzdHJvEioKEGZlY2hhSG9yYUVudmlhZG8YBSABKAVSEGZlY2hhSG9yYUVudmlhZG8SFgoGZXN0YWRvGAYgASgFUgZlc3RhZG8SIAoLaWRyZWZlcmVudGUYByABKAVSC2lkcmVmZXJlbnRlEiQKDXB1bnRvc0dhbmFkb3MYCCABKAVSDXB1bnRvc0dhbmFkb3M=');
@$core.Deprecated('Use getMensajeContactosResponseDescriptor instead')
const getMensajeContactosResponse$json = const {
  '1': 'getMensajeContactosResponse',
  '2': const [
    const {'1': 'data', '3': 1, '4': 3, '5': 11, '6': '.servicePackage.mensajeContacto', '10': 'data'},
    const {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    const {'1': 'sizePage', '3': 3, '4': 1, '5': 5, '10': 'sizePage'},
    const {'1': 'more', '3': 4, '4': 1, '5': 8, '10': 'more'},
    const {'1': 'puntosGanados', '3': 5, '4': 1, '5': 5, '10': 'puntosGanados'},
  ],
};

/// Descriptor for `getMensajeContactosResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMensajeContactosResponseDescriptor = $convert.base64Decode('ChtnZXRNZW5zYWplQ29udGFjdG9zUmVzcG9uc2USMwoEZGF0YRgBIAMoCzIfLnNlcnZpY2VQYWNrYWdlLm1lbnNhamVDb250YWN0b1IEZGF0YRImCg9uZXh0X3BhZ2VfdG9rZW4YAiABKAlSDW5leHRQYWdlVG9rZW4SGgoIc2l6ZVBhZ2UYAyABKAVSCHNpemVQYWdlEhIKBG1vcmUYBCABKAhSBG1vcmUSJAoNcHVudG9zR2FuYWRvcxgFIAEoBVINcHVudG9zR2FuYWRvcw==');
@$core.Deprecated('Use getReferenciasSubprRequestDescriptor instead')
const getReferenciasSubprRequest$json = const {
  '1': 'getReferenciasSubprRequest',
  '2': const [
    const {'1': 'sessionString', '3': 1, '4': 1, '5': 9, '10': 'sessionString'},
    const {'1': 'pageKey', '3': 2, '4': 1, '5': 9, '10': 'pageKey'},
    const {'1': 'term', '3': 3, '4': 1, '5': 9, '10': 'term'},
  ],
};

/// Descriptor for `getReferenciasSubprRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getReferenciasSubprRequestDescriptor = $convert.base64Decode('ChpnZXRSZWZlcmVuY2lhc1N1YnByUmVxdWVzdBIkCg1zZXNzaW9uU3RyaW5nGAEgASgJUg1zZXNzaW9uU3RyaW5nEhgKB3BhZ2VLZXkYAiABKAlSB3BhZ2VLZXkSEgoEdGVybRgDIAEoCVIEdGVybQ==');
@$core.Deprecated('Use referenciaSubproductoDescriptor instead')
const referenciaSubproducto$json = const {
  '1': 'referenciaSubproducto',
  '2': const [
    const {'1': 'idReferencia', '3': 1, '4': 1, '5': 5, '10': 'idReferencia'},
    const {'1': 'idSubproducto', '3': 2, '4': 1, '5': 5, '10': 'idSubproducto'},
    const {'1': 'fechaHoraRegistro', '3': 3, '4': 1, '5': 5, '10': 'fechaHoraRegistro'},
    const {'1': 'estadoReferencia', '3': 4, '4': 1, '5': 5, '10': 'estadoReferencia'},
    const {'1': 'numeroTelefono', '3': 5, '4': 1, '5': 9, '10': 'numeroTelefono'},
    const {'1': 'nombreApellido', '3': 6, '4': 1, '5': 9, '10': 'nombreApellido'},
    const {'1': 'idreferente', '3': 7, '4': 1, '5': 5, '10': 'idreferente'},
    const {'1': 'monto', '3': 8, '4': 1, '5': 1, '10': 'monto'},
    const {'1': 'nombreEntidad', '3': 9, '4': 1, '5': 9, '10': 'nombreEntidad'},
    const {'1': 'fechaCierre', '3': 10, '4': 1, '5': 5, '10': 'fechaCierre'},
    const {'1': 'observaciones', '3': 11, '4': 1, '5': 9, '10': 'observaciones'},
    const {'1': 'puntosGanados', '3': 12, '4': 1, '5': 5, '10': 'puntosGanados'},
    const {'1': 'nombreSubpr', '3': 13, '4': 1, '5': 9, '10': 'nombreSubpr'},
    const {'1': 'nombreProducto', '3': 14, '4': 1, '5': 9, '10': 'nombreProducto'},
  ],
};

/// Descriptor for `referenciaSubproducto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List referenciaSubproductoDescriptor = $convert.base64Decode('ChVyZWZlcmVuY2lhU3VicHJvZHVjdG8SIgoMaWRSZWZlcmVuY2lhGAEgASgFUgxpZFJlZmVyZW5jaWESJAoNaWRTdWJwcm9kdWN0bxgCIAEoBVINaWRTdWJwcm9kdWN0bxIsChFmZWNoYUhvcmFSZWdpc3RybxgDIAEoBVIRZmVjaGFIb3JhUmVnaXN0cm8SKgoQZXN0YWRvUmVmZXJlbmNpYRgEIAEoBVIQZXN0YWRvUmVmZXJlbmNpYRImCg5udW1lcm9UZWxlZm9ubxgFIAEoCVIObnVtZXJvVGVsZWZvbm8SJgoObm9tYnJlQXBlbGxpZG8YBiABKAlSDm5vbWJyZUFwZWxsaWRvEiAKC2lkcmVmZXJlbnRlGAcgASgFUgtpZHJlZmVyZW50ZRIUCgVtb250bxgIIAEoAVIFbW9udG8SJAoNbm9tYnJlRW50aWRhZBgJIAEoCVINbm9tYnJlRW50aWRhZBIgCgtmZWNoYUNpZXJyZRgKIAEoBVILZmVjaGFDaWVycmUSJAoNb2JzZXJ2YWNpb25lcxgLIAEoCVINb2JzZXJ2YWNpb25lcxIkCg1wdW50b3NHYW5hZG9zGAwgASgFUg1wdW50b3NHYW5hZG9zEiAKC25vbWJyZVN1YnByGA0gASgJUgtub21icmVTdWJwchImCg5ub21icmVQcm9kdWN0bxgOIAEoCVIObm9tYnJlUHJvZHVjdG8=');
@$core.Deprecated('Use getReferenciasSubprResponseDescriptor instead')
const getReferenciasSubprResponse$json = const {
  '1': 'getReferenciasSubprResponse',
  '2': const [
    const {'1': 'data', '3': 1, '4': 3, '5': 11, '6': '.servicePackage.referenciaSubproducto', '10': 'data'},
    const {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    const {'1': 'sizePage', '3': 3, '4': 1, '5': 5, '10': 'sizePage'},
    const {'1': 'more', '3': 4, '4': 1, '5': 8, '10': 'more'},
    const {'1': 'puntosGanados', '3': 5, '4': 1, '5': 5, '10': 'puntosGanados'},
  ],
};

/// Descriptor for `getReferenciasSubprResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getReferenciasSubprResponseDescriptor = $convert.base64Decode('ChtnZXRSZWZlcmVuY2lhc1N1YnByUmVzcG9uc2USOQoEZGF0YRgBIAMoCzIlLnNlcnZpY2VQYWNrYWdlLnJlZmVyZW5jaWFTdWJwcm9kdWN0b1IEZGF0YRImCg9uZXh0X3BhZ2VfdG9rZW4YAiABKAlSDW5leHRQYWdlVG9rZW4SGgoIc2l6ZVBhZ2UYAyABKAVSCHNpemVQYWdlEhIKBG1vcmUYBCABKAhSBG1vcmUSJAoNcHVudG9zR2FuYWRvcxgFIAEoBVINcHVudG9zR2FuYWRvcw==');
@$core.Deprecated('Use saveRefEmpresaRequestDescriptor instead')
const saveRefEmpresaRequest$json = const {
  '1': 'saveRefEmpresaRequest',
  '2': const [
    const {'1': 'sessionString', '3': 1, '4': 1, '5': 9, '10': 'sessionString'},
    const {'1': 'nombreEmpresa', '3': 2, '4': 1, '5': 9, '10': 'nombreEmpresa'},
    const {'1': 'identificacionEmpresa', '3': 3, '4': 1, '5': 9, '10': 'identificacionEmpresa'},
    const {'1': 'nombreContacto', '3': 4, '4': 1, '5': 9, '10': 'nombreContacto'},
    const {'1': 'telefonoEmpresa', '3': 5, '4': 1, '5': 9, '10': 'telefonoEmpresa'},
    const {'1': 'estadoRefEmpresa', '3': 6, '4': 1, '5': 9, '10': 'estadoRefEmpresa'},
  ],
};

/// Descriptor for `saveRefEmpresaRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveRefEmpresaRequestDescriptor = $convert.base64Decode('ChVzYXZlUmVmRW1wcmVzYVJlcXVlc3QSJAoNc2Vzc2lvblN0cmluZxgBIAEoCVINc2Vzc2lvblN0cmluZxIkCg1ub21icmVFbXByZXNhGAIgASgJUg1ub21icmVFbXByZXNhEjQKFWlkZW50aWZpY2FjaW9uRW1wcmVzYRgDIAEoCVIVaWRlbnRpZmljYWNpb25FbXByZXNhEiYKDm5vbWJyZUNvbnRhY3RvGAQgASgJUg5ub21icmVDb250YWN0bxIoCg90ZWxlZm9ub0VtcHJlc2EYBSABKAlSD3RlbGVmb25vRW1wcmVzYRIqChBlc3RhZG9SZWZFbXByZXNhGAYgASgJUhBlc3RhZG9SZWZFbXByZXNh');
@$core.Deprecated('Use saveRefEmpresaResponseDescriptor instead')
const saveRefEmpresaResponse$json = const {
  '1': 'saveRefEmpresaResponse',
  '2': const [
    const {'1': 'mensaje', '3': 1, '4': 1, '5': 9, '10': 'mensaje'},
    const {'1': 'puntosGanados', '3': 2, '4': 1, '5': 5, '10': 'puntosGanados'},
  ],
};

/// Descriptor for `saveRefEmpresaResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveRefEmpresaResponseDescriptor = $convert.base64Decode('ChZzYXZlUmVmRW1wcmVzYVJlc3BvbnNlEhgKB21lbnNhamUYASABKAlSB21lbnNhamUSJAoNcHVudG9zR2FuYWRvcxgCIAEoBVINcHVudG9zR2FuYWRvcw==');
@$core.Deprecated('Use getReferenciasEmprRequestDescriptor instead')
const getReferenciasEmprRequest$json = const {
  '1': 'getReferenciasEmprRequest',
  '2': const [
    const {'1': 'sessionString', '3': 1, '4': 1, '5': 9, '10': 'sessionString'},
    const {'1': 'pageKey', '3': 2, '4': 1, '5': 9, '10': 'pageKey'},
    const {'1': 'term', '3': 3, '4': 1, '5': 9, '10': 'term'},
  ],
};

/// Descriptor for `getReferenciasEmprRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getReferenciasEmprRequestDescriptor = $convert.base64Decode('ChlnZXRSZWZlcmVuY2lhc0VtcHJSZXF1ZXN0EiQKDXNlc3Npb25TdHJpbmcYASABKAlSDXNlc3Npb25TdHJpbmcSGAoHcGFnZUtleRgCIAEoCVIHcGFnZUtleRISCgR0ZXJtGAMgASgJUgR0ZXJt');
@$core.Deprecated('Use referenciaEmpresaDescriptor instead')
const referenciaEmpresa$json = const {
  '1': 'referenciaEmpresa',
  '2': const [
    const {'1': 'idRefEmpresa', '3': 1, '4': 1, '5': 5, '10': 'idRefEmpresa'},
    const {'1': 'nombreEmpresa', '3': 2, '4': 1, '5': 9, '10': 'nombreEmpresa'},
    const {'1': 'identificacionEmpresa', '3': 3, '4': 1, '5': 9, '10': 'identificacionEmpresa'},
    const {'1': 'nombreContacto', '3': 4, '4': 1, '5': 9, '10': 'nombreContacto'},
    const {'1': 'telefonoEmpresa', '3': 5, '4': 1, '5': 9, '10': 'telefonoEmpresa'},
    const {'1': 'estadoRefEmpresa', '3': 6, '4': 1, '5': 5, '10': 'estadoRefEmpresa'},
    const {'1': 'puntosGanados', '3': 7, '4': 1, '5': 5, '10': 'puntosGanados'},
    const {'1': 'fechaHoraRegistro', '3': 8, '4': 1, '5': 9, '10': 'fechaHoraRegistro'},
    const {'1': 'fechaModificado', '3': 9, '4': 1, '5': 9, '10': 'fechaModificado'},
    const {'1': 'idreferente', '3': 10, '4': 1, '5': 5, '10': 'idreferente'},
    const {'1': 'fechaCierre', '3': 11, '4': 1, '5': 9, '10': 'fechaCierre'},
  ],
};

/// Descriptor for `referenciaEmpresa`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List referenciaEmpresaDescriptor = $convert.base64Decode('ChFyZWZlcmVuY2lhRW1wcmVzYRIiCgxpZFJlZkVtcHJlc2EYASABKAVSDGlkUmVmRW1wcmVzYRIkCg1ub21icmVFbXByZXNhGAIgASgJUg1ub21icmVFbXByZXNhEjQKFWlkZW50aWZpY2FjaW9uRW1wcmVzYRgDIAEoCVIVaWRlbnRpZmljYWNpb25FbXByZXNhEiYKDm5vbWJyZUNvbnRhY3RvGAQgASgJUg5ub21icmVDb250YWN0bxIoCg90ZWxlZm9ub0VtcHJlc2EYBSABKAlSD3RlbGVmb25vRW1wcmVzYRIqChBlc3RhZG9SZWZFbXByZXNhGAYgASgFUhBlc3RhZG9SZWZFbXByZXNhEiQKDXB1bnRvc0dhbmFkb3MYByABKAVSDXB1bnRvc0dhbmFkb3MSLAoRZmVjaGFIb3JhUmVnaXN0cm8YCCABKAlSEWZlY2hhSG9yYVJlZ2lzdHJvEigKD2ZlY2hhTW9kaWZpY2FkbxgJIAEoCVIPZmVjaGFNb2RpZmljYWRvEiAKC2lkcmVmZXJlbnRlGAogASgFUgtpZHJlZmVyZW50ZRIgCgtmZWNoYUNpZXJyZRgLIAEoCVILZmVjaGFDaWVycmU=');
@$core.Deprecated('Use getReferenciasEmprResponseDescriptor instead')
const getReferenciasEmprResponse$json = const {
  '1': 'getReferenciasEmprResponse',
  '2': const [
    const {'1': 'data', '3': 1, '4': 3, '5': 11, '6': '.servicePackage.referenciaEmpresa', '10': 'data'},
    const {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    const {'1': 'sizePage', '3': 3, '4': 1, '5': 5, '10': 'sizePage'},
    const {'1': 'more', '3': 4, '4': 1, '5': 8, '10': 'more'},
    const {'1': 'puntosGanados', '3': 5, '4': 1, '5': 5, '10': 'puntosGanados'},
  ],
};

/// Descriptor for `getReferenciasEmprResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getReferenciasEmprResponseDescriptor = $convert.base64Decode('ChpnZXRSZWZlcmVuY2lhc0VtcHJSZXNwb25zZRI1CgRkYXRhGAEgAygLMiEuc2VydmljZVBhY2thZ2UucmVmZXJlbmNpYUVtcHJlc2FSBGRhdGESJgoPbmV4dF9wYWdlX3Rva2VuGAIgASgJUg1uZXh0UGFnZVRva2VuEhoKCHNpemVQYWdlGAMgASgFUghzaXplUGFnZRISCgRtb3JlGAQgASgIUgRtb3JlEiQKDXB1bnRvc0dhbmFkb3MYBSABKAVSDXB1bnRvc0dhbmFkb3M=');
@$core.Deprecated('Use getMetricasRequestDescriptor instead')
const getMetricasRequest$json = const {
  '1': 'getMetricasRequest',
  '2': const [
    const {'1': 'sessionString', '3': 1, '4': 1, '5': 9, '10': 'sessionString'},
  ],
};

/// Descriptor for `getMetricasRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMetricasRequestDescriptor = $convert.base64Decode('ChJnZXRNZXRyaWNhc1JlcXVlc3QSJAoNc2Vzc2lvblN0cmluZxgBIAEoCVINc2Vzc2lvblN0cmluZw==');
@$core.Deprecated('Use getMetricasResponseDescriptor instead')
const getMetricasResponse$json = const {
  '1': 'getMetricasResponse',
  '2': const [
    const {'1': 'totalReferidos', '3': 1, '4': 1, '5': 9, '10': 'totalReferidos'},
    const {'1': 'referidosEnProceso', '3': 2, '4': 1, '5': 9, '10': 'referidosEnProceso'},
    const {'1': 'referidosAnulados', '3': 3, '4': 1, '5': 9, '10': 'referidosAnulados'},
    const {'1': 'referidosConvertidos', '3': 4, '4': 1, '5': 9, '10': 'referidosConvertidos'},
    const {'1': 'tasaConversion', '3': 5, '4': 1, '5': 9, '10': 'tasaConversion'},
  ],
};

/// Descriptor for `getMetricasResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMetricasResponseDescriptor = $convert.base64Decode('ChNnZXRNZXRyaWNhc1Jlc3BvbnNlEiYKDnRvdGFsUmVmZXJpZG9zGAEgASgJUg50b3RhbFJlZmVyaWRvcxIuChJyZWZlcmlkb3NFblByb2Nlc28YAiABKAlSEnJlZmVyaWRvc0VuUHJvY2VzbxIsChFyZWZlcmlkb3NBbnVsYWRvcxgDIAEoCVIRcmVmZXJpZG9zQW51bGFkb3MSMgoUcmVmZXJpZG9zQ29udmVydGlkb3MYBCABKAlSFHJlZmVyaWRvc0NvbnZlcnRpZG9zEiYKDnRhc2FDb252ZXJzaW9uGAUgASgJUg50YXNhQ29udmVyc2lvbg==');
@$core.Deprecated('Use referenteLoginRequestDescriptor instead')
const referenteLoginRequest$json = const {
  '1': 'referenteLoginRequest',
  '2': const [
    const {'1': 'usuario', '3': 1, '4': 1, '5': 9, '10': 'usuario'},
    const {'1': 'idTipoCuentaReferente', '3': 2, '4': 1, '5': 9, '10': 'idTipoCuentaReferente'},
    const {'1': 'clave', '3': 3, '4': 1, '5': 9, '10': 'clave'},
    const {'1': 'sessionString', '3': 4, '4': 1, '5': 9, '10': 'sessionString'},
  ],
};

/// Descriptor for `referenteLoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List referenteLoginRequestDescriptor = $convert.base64Decode('ChVyZWZlcmVudGVMb2dpblJlcXVlc3QSGAoHdXN1YXJpbxgBIAEoCVIHdXN1YXJpbxI0ChVpZFRpcG9DdWVudGFSZWZlcmVudGUYAiABKAlSFWlkVGlwb0N1ZW50YVJlZmVyZW50ZRIUCgVjbGF2ZRgDIAEoCVIFY2xhdmUSJAoNc2Vzc2lvblN0cmluZxgEIAEoCVINc2Vzc2lvblN0cmluZw==');
@$core.Deprecated('Use referenteLoginResponseDescriptor instead')
const referenteLoginResponse$json = const {
  '1': 'referenteLoginResponse',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `referenteLoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List referenteLoginResponseDescriptor = $convert.base64Decode('ChZyZWZlcmVudGVMb2dpblJlc3BvbnNlEhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2U=');
@$core.Deprecated('Use refCambiarClaveRequestDescriptor instead')
const refCambiarClaveRequest$json = const {
  '1': 'refCambiarClaveRequest',
  '2': const [
    const {'1': 'msisdn', '3': 1, '4': 1, '5': 9, '10': 'msisdn'},
    const {'1': 'otp', '3': 2, '4': 1, '5': 9, '10': 'otp'},
    const {'1': 'clave', '3': 3, '4': 1, '5': 9, '10': 'clave'},
    const {'1': 'sessionString', '3': 4, '4': 1, '5': 9, '10': 'sessionString'},
  ],
};

/// Descriptor for `refCambiarClaveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refCambiarClaveRequestDescriptor = $convert.base64Decode('ChZyZWZDYW1iaWFyQ2xhdmVSZXF1ZXN0EhYKBm1zaXNkbhgBIAEoCVIGbXNpc2RuEhAKA290cBgCIAEoCVIDb3RwEhQKBWNsYXZlGAMgASgJUgVjbGF2ZRIkCg1zZXNzaW9uU3RyaW5nGAQgASgJUg1zZXNzaW9uU3RyaW5n');
@$core.Deprecated('Use refCambiarClaveResponseDescriptor instead')
const refCambiarClaveResponse$json = const {
  '1': 'refCambiarClaveResponse',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `refCambiarClaveResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refCambiarClaveResponseDescriptor = $convert.base64Decode('ChdyZWZDYW1iaWFyQ2xhdmVSZXNwb25zZRIYCgdtZXNzYWdlGAEgASgJUgdtZXNzYWdl');
@$core.Deprecated('Use getProductosRequestDescriptor instead')
const getProductosRequest$json = const {
  '1': 'getProductosRequest',
  '2': const [
    const {'1': 'sessionString', '3': 1, '4': 1, '5': 9, '10': 'sessionString'},
  ],
};

/// Descriptor for `getProductosRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getProductosRequestDescriptor = $convert.base64Decode('ChNnZXRQcm9kdWN0b3NSZXF1ZXN0EiQKDXNlc3Npb25TdHJpbmcYASABKAlSDXNlc3Npb25TdHJpbmc=');
@$core.Deprecated('Use productoDescriptor instead')
const producto$json = const {
  '1': 'producto',
  '2': const [
    const {'1': 'idProducto', '3': 1, '4': 1, '5': 5, '10': 'idProducto'},
    const {'1': 'nombreProducto', '3': 2, '4': 1, '5': 9, '10': 'nombreProducto'},
    const {'1': 'imagenProducto', '3': 3, '4': 1, '5': 9, '10': 'imagenProducto'},
    const {'1': 'estadoProducto', '3': 4, '4': 1, '5': 5, '10': 'estadoProducto'},
  ],
};

/// Descriptor for `producto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List productoDescriptor = $convert.base64Decode('Cghwcm9kdWN0bxIeCgppZFByb2R1Y3RvGAEgASgFUgppZFByb2R1Y3RvEiYKDm5vbWJyZVByb2R1Y3RvGAIgASgJUg5ub21icmVQcm9kdWN0bxImCg5pbWFnZW5Qcm9kdWN0bxgDIAEoCVIOaW1hZ2VuUHJvZHVjdG8SJgoOZXN0YWRvUHJvZHVjdG8YBCABKAVSDmVzdGFkb1Byb2R1Y3Rv');
@$core.Deprecated('Use getProductosResponseDescriptor instead')
const getProductosResponse$json = const {
  '1': 'getProductosResponse',
  '2': const [
    const {'1': 'productos', '3': 1, '4': 3, '5': 11, '6': '.servicePackage.producto', '10': 'productos'},
    const {'1': 'textoNegrita', '3': 2, '4': 1, '5': 9, '10': 'textoNegrita'},
    const {'1': 'texto', '3': 3, '4': 1, '5': 9, '10': 'texto'},
    const {'1': 'textoColor', '3': 4, '4': 1, '5': 9, '10': 'textoColor'},
    const {'1': 'fecha', '3': 5, '4': 1, '5': 9, '10': 'fecha'},
    const {'1': 'storiesVistas', '3': 6, '4': 1, '5': 8, '10': 'storiesVistas'},
  ],
};

/// Descriptor for `getProductosResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getProductosResponseDescriptor = $convert.base64Decode('ChRnZXRQcm9kdWN0b3NSZXNwb25zZRI2Cglwcm9kdWN0b3MYASADKAsyGC5zZXJ2aWNlUGFja2FnZS5wcm9kdWN0b1IJcHJvZHVjdG9zEiIKDHRleHRvTmVncml0YRgCIAEoCVIMdGV4dG9OZWdyaXRhEhQKBXRleHRvGAMgASgJUgV0ZXh0bxIeCgp0ZXh0b0NvbG9yGAQgASgJUgp0ZXh0b0NvbG9yEhQKBWZlY2hhGAUgASgJUgVmZWNoYRIkCg1zdG9yaWVzVmlzdGFzGAYgASgIUg1zdG9yaWVzVmlzdGFz');
@$core.Deprecated('Use registerVistaStoriesRequestDescriptor instead')
const registerVistaStoriesRequest$json = const {
  '1': 'registerVistaStoriesRequest',
  '2': const [
    const {'1': 'sessionString', '3': 1, '4': 1, '5': 9, '10': 'sessionString'},
  ],
};

/// Descriptor for `registerVistaStoriesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerVistaStoriesRequestDescriptor = $convert.base64Decode('ChtyZWdpc3RlclZpc3RhU3Rvcmllc1JlcXVlc3QSJAoNc2Vzc2lvblN0cmluZxgBIAEoCVINc2Vzc2lvblN0cmluZw==');
@$core.Deprecated('Use registerVistaStoriesResponseDescriptor instead')
const registerVistaStoriesResponse$json = const {
  '1': 'registerVistaStoriesResponse',
  '2': const [
    const {'1': 'puntosGanados', '3': 1, '4': 1, '5': 5, '10': 'puntosGanados'},
  ],
};

/// Descriptor for `registerVistaStoriesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerVistaStoriesResponseDescriptor = $convert.base64Decode('ChxyZWdpc3RlclZpc3RhU3Rvcmllc1Jlc3BvbnNlEiQKDXB1bnRvc0dhbmFkb3MYASABKAVSDXB1bnRvc0dhbmFkb3M=');
