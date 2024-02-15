//
//  Generated code. Do not modify.
//  source: proto/service.proto
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
  ],
};

/// Descriptor for `otpRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List otpRequestDescriptor = $convert.base64Decode('CgpvdHBSZXF1ZXN0EhYKBm1zaXNkbhgBIAEoCVIGbXNpc2Ru');
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
  ],
};

/// Descriptor for `referenteRegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List referenteRegisterRequestDescriptor = $convert.base64Decode('ChhyZWZlcmVudGVSZWdpc3RlclJlcXVlc3QSFgoGbXNpc2RuGAEgASgJUgZtc2lzZG4SHAoJYXBlbGxpZG9zGAIgASgJUglhcGVsbGlkb3MSGAoHbm9tYnJlcxgDIAEoCVIHbm9tYnJlcxISCgRtYWlsGAQgASgJUgRtYWlsEigKD2ZlY2hhTmFjaW1pZW50bxgFIAEoCVIPZmVjaGFOYWNpbWllbnRvEhYKBmNpdWRhZBgGIAEoCVIGY2l1ZGFkEiAKC21lZGlvc1BhZ29zGAcgASgJUgttZWRpb3NQYWdvcxIsChFlbnRpZGFkRmluYW5jaWVyYRgIIAEoCVIRZW50aWRhZEZpbmFuY2llcmESHgoKdGlwb0N1ZW50YRgJIAEoCVIKdGlwb0N1ZW50YRIUCgVjbGF2ZRgKIAEoCVIFY2xhdmUSJAoNc2Vzc2lvblNlY3JldBgLIAEoCVINc2Vzc2lvblNlY3JldA==');
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
    const {'1': 'msisdn', '3': 1, '4': 1, '5': 9, '10': 'msisdn'},
    const {'1': 'sessionString', '3': 2, '4': 1, '5': 9, '10': 'sessionString'},
  ],
};

/// Descriptor for `getReferenteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getReferenteRequestDescriptor = $convert.base64Decode('ChNnZXRSZWZlcmVudGVSZXF1ZXN0EhYKBm1zaXNkbhgBIAEoCVIGbXNpc2RuEiQKDXNlc3Npb25TZWNyZXQYAiABKAlSDXNlc3Npb25TZWNyZXQ=');
@$core.Deprecated('Use getReferenteResponseDescriptor instead')
const getReferenteResponse$json = const {
  '1': 'getReferenteResponse',
  '2': const [
    const {'1': 'apellidos', '3': 1, '4': 1, '5': 9, '10': 'apellidos'},
    const {'1': 'nombres', '3': 2, '4': 1, '5': 9, '10': 'nombres'},
    const {'1': 'mail', '3': 3, '4': 1, '5': 9, '10': 'mail'},
    const {'1': 'fechaNacimiento', '3': 4, '4': 1, '5': 9, '10': 'fechaNacimiento'},
    const {'1': 'ciudad', '3': 5, '4': 1, '5': 9, '10': 'ciudad'},
    const {'1': 'mediosPagos', '3': 6, '4': 1, '5': 9, '10': 'mediosPagos'},
    const {'1': 'entidadFinanciera', '3': 7, '4': 1, '5': 9, '10': 'entidadFinanciera'},
    const {'1': 'puntos', '3': 8, '4': 1, '5': 9, '10': 'puntos'},
    const {'1': 'puntosFechaVencimiento', '3': 9, '4': 1, '5': 9, '10': 'puntosFechaVencimiento'},
  ],
};

/// Descriptor for `getReferenteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getReferenteResponseDescriptor = $convert.base64Decode('ChRnZXRSZWZlcmVudGVSZXNwb25zZRIcCglhcGVsbGlkb3MYASABKAlSCWFwZWxsaWRvcxIYCgdub21icmVzGAIgASgJUgdub21icmVzEhIKBG1haWwYAyABKAlSBG1haWwSKAoPZmVjaGFOYWNpbWllbnRvGAQgASgJUg9mZWNoYU5hY2ltaWVudG8SFgoGY2l1ZGFkGAUgASgJUgZjaXVkYWQSIAoLbWVkaW9zUGFnb3MYBiABKAlSC21lZGlvc1BhZ29zEiwKEWVudGlkYWRGaW5hbmNpZXJhGAcgASgJUhFlbnRpZGFkRmluYW5jaWVyYRIWCgZwdW50b3MYCCABKAlSBnB1bnRvcxI2ChZwdW50b3NGZWNoYVZlbmNpbWllbnRvGAkgASgJUhZwdW50b3NGZWNoYVZlbmNpbWllbnRv');
const $core.Map<$core.String, $core.dynamic> ServiceBase$json = const {
  '1': 'Service',
  '2': const [
    const {'1': 'ladingConfig', '2': '.servicePackage.landingConfigRequest', '3': '.servicePackage.landingConfigResponse', '4': const {}},
    const {'1': 'otp', '2': '.servicePackage.otpRequest', '3': '.servicePackage.otpResponse', '4': const {}},
    const {'1': 'checkOtp', '2': '.servicePackage.checkOtpRequest', '3': '.servicePackage.checkOtpResponse', '4': const {}},
    const {'1': 'PingPong', '2': '.servicePackage.pingRequest', '3': '.servicePackage.pingResponse', '4': const {}},
    const {'1': 'referenteRegister', '2': '.servicePackage.referenteRegisterRequest', '3': '.servicePackage.referenteRegisterResponse', '4': const {}},
    const {'1': 'getReferente', '2': '.servicePackage.getReferenteRequest', '3': '.servicePackage.getReferenteResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use serviceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> ServiceBase$messageJson = const {
  '.servicePackage.landingConfigRequest': landingConfigRequest$json,
  '.servicePackage.landingConfigResponse': landingConfigResponse$json,
  '.servicePackage.otpRequest': otpRequest$json,
  '.servicePackage.otpResponse': otpResponse$json,
  '.servicePackage.checkOtpRequest': checkOtpRequest$json,
  '.servicePackage.checkOtpResponse': checkOtpResponse$json,
  '.servicePackage.pingRequest': pingRequest$json,
  '.servicePackage.pingResponse': pingResponse$json,
  '.servicePackage.referenteRegisterRequest': referenteRegisterRequest$json,
  '.servicePackage.referenteRegisterResponse': referenteRegisterResponse$json,
  '.servicePackage.getReferenteRequest': getReferenteRequest$json,
  '.servicePackage.getReferenteResponse': getReferenteResponse$json,
};

/// Descriptor for `Service`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List serviceDescriptor = $convert.base64Decode('CgdTZXJ2aWNlEl0KDGxhZGluZ0NvbmZpZxIkLnNlcnZpY2VQYWNrYWdlLmxhbmRpbmdDb25maWdSZXF1ZXN0GiUuc2VydmljZVBhY2thZ2UubGFuZGluZ0NvbmZpZ1Jlc3BvbnNlIgASQAoDb3RwEhouc2VydmljZVBhY2thZ2Uub3RwUmVxdWVzdBobLnNlcnZpY2VQYWNrYWdlLm90cFJlc3BvbnNlIgASTwoIY2hlY2tPdHASHy5zZXJ2aWNlUGFja2FnZS5jaGVja090cFJlcXVlc3QaIC5zZXJ2aWNlUGFja2FnZS5jaGVja090cFJlc3BvbnNlIgASRwoIUGluZ1BvbmcSGy5zZXJ2aWNlUGFja2FnZS5waW5nUmVxdWVzdBocLnNlcnZpY2VQYWNrYWdlLnBpbmdSZXNwb25zZSIAEmoKEXJlZmVyZW50ZVJlZ2lzdGVyEiguc2VydmljZVBhY2thZ2UucmVmZXJlbnRlUmVnaXN0ZXJSZXF1ZXN0Gikuc2VydmljZVBhY2thZ2UucmVmZXJlbnRlUmVnaXN0ZXJSZXNwb25zZSIAElsKDGdldFJlZmVyZW50ZRIjLnNlcnZpY2VQYWNrYWdlLmdldFJlZmVyZW50ZVJlcXVlc3QaJC5zZXJ2aWNlUGFja2FnZS5nZXRSZWZlcmVudGVSZXNwb25zZSIA');
