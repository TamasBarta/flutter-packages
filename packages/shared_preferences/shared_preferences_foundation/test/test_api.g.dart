// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
// Autogenerated from Pigeon (v16.0.5), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, unnecessary_import, no_leading_underscores_for_local_identifiers
// ignore_for_file: avoid_relative_lib_imports
import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;
import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:shared_preferences_foundation/src/messages.g.dart';

class _TestUserDefaultsApiCodec extends StandardMessageCodec {
  const _TestUserDefaultsApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is SharedPreferencesPigeonOptions) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return SharedPreferencesPigeonOptions.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

abstract class TestUserDefaultsApi {
  static TestDefaultBinaryMessengerBinding? get _testBinaryMessengerBinding =>
      TestDefaultBinaryMessengerBinding.instance;
  static const MessageCodec<Object?> pigeonChannelCodec =
      _TestUserDefaultsApiCodec();

  void remove(String key);

  void setBool(String key, bool value);

  void setDouble(String key, double value);

  void setValue(String key, Object value);

  Map<String?, Object?> getAll(String prefix, List<String?>? allowList);

  bool clear(String prefix, List<String?>? allowList);

  static void setup(TestUserDefaultsApi? api,
      {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.shared_preferences_foundation.LegacyUserDefaultsApi.remove',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.LegacyUserDefaultsApi.remove was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_key = (args[0] as String?);
          assert(arg_key != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.LegacyUserDefaultsApi.remove was null, expected non-null String.');
          try {
            api.remove(arg_key!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.shared_preferences_foundation.LegacyUserDefaultsApi.setBool',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.LegacyUserDefaultsApi.setBool was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_key = (args[0] as String?);
          assert(arg_key != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.LegacyUserDefaultsApi.setBool was null, expected non-null String.');
          final bool? arg_value = (args[1] as bool?);
          assert(arg_value != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.LegacyUserDefaultsApi.setBool was null, expected non-null bool.');
          try {
            api.setBool(arg_key!, arg_value!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.shared_preferences_foundation.LegacyUserDefaultsApi.setDouble',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.LegacyUserDefaultsApi.setDouble was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_key = (args[0] as String?);
          assert(arg_key != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.LegacyUserDefaultsApi.setDouble was null, expected non-null String.');
          final double? arg_value = (args[1] as double?);
          assert(arg_value != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.LegacyUserDefaultsApi.setDouble was null, expected non-null double.');
          try {
            api.setDouble(arg_key!, arg_value!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.shared_preferences_foundation.LegacyUserDefaultsApi.setValue',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.LegacyUserDefaultsApi.setValue was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_key = (args[0] as String?);
          assert(arg_key != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.LegacyUserDefaultsApi.setValue was null, expected non-null String.');
          final Object? arg_value = (args[1] as Object?);
          assert(arg_value != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.LegacyUserDefaultsApi.setValue was null, expected non-null Object.');
          try {
            api.setValue(arg_key!, arg_value!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.shared_preferences_foundation.LegacyUserDefaultsApi.getAll',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.LegacyUserDefaultsApi.getAll was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_prefix = (args[0] as String?);
          assert(arg_prefix != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.LegacyUserDefaultsApi.getAll was null, expected non-null String.');
          final List<String?>? arg_allowList =
              (args[1] as List<Object?>?)?.cast<String?>();
          try {
            final Map<String?, Object?> output =
                api.getAll(arg_prefix!, arg_allowList);
            return <Object?>[output];
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.shared_preferences_foundation.LegacyUserDefaultsApi.clear',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.LegacyUserDefaultsApi.clear was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_prefix = (args[0] as String?);
          assert(arg_prefix != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.LegacyUserDefaultsApi.clear was null, expected non-null String.');
          final List<String?>? arg_allowList =
              (args[1] as List<Object?>?)?.cast<String?>();
          try {
            final bool output = api.clear(arg_prefix!, arg_allowList);
            return <Object?>[output];
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
  }
}

class _TestSharedPreferencesAsyncApiCodec extends StandardMessageCodec {
  const _TestSharedPreferencesAsyncApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is SharedPreferencesPigeonOptions) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return SharedPreferencesPigeonOptions.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

abstract class TestSharedPreferencesAsyncApi {
  static TestDefaultBinaryMessengerBinding? get _testBinaryMessengerBinding =>
      TestDefaultBinaryMessengerBinding.instance;
  static const MessageCodec<Object?> pigeonChannelCodec =
      _TestSharedPreferencesAsyncApiCodec();

  /// Adds property to shared preferences data set of type String.
  void set(String key, Object value, SharedPreferencesPigeonOptions options);

  /// Removes all properties from shared preferences data set with matching prefix.
  void clear(List<String?>? allowList, SharedPreferencesPigeonOptions options);

  /// Gets all properties from shared preferences data set with matching prefix.
  Map<String?, Object?> getAll(
      List<String?>? allowList, SharedPreferencesPigeonOptions options);

  /// Gets individual value stored with [key], if any.
  Object? getValue(String key, SharedPreferencesPigeonOptions options);

  /// Gets all properties from shared preferences data set with matching prefix.
  List<String?> getKeys(
      List<String?>? allowList, SharedPreferencesPigeonOptions options);

  static void setup(TestSharedPreferencesAsyncApi? api,
      {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.shared_preferences_foundation.UserDefaultsApi.set',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.UserDefaultsApi.set was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_key = (args[0] as String?);
          assert(arg_key != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.UserDefaultsApi.set was null, expected non-null String.');
          final Object? arg_value = (args[1] as Object?);
          assert(arg_value != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.UserDefaultsApi.set was null, expected non-null Object.');
          final SharedPreferencesPigeonOptions? arg_options =
              (args[2] as SharedPreferencesPigeonOptions?);
          assert(arg_options != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.UserDefaultsApi.set was null, expected non-null SharedPreferencesPigeonOptions.');
          try {
            api.set(arg_key!, arg_value!, arg_options!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.shared_preferences_foundation.UserDefaultsApi.clear',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.UserDefaultsApi.clear was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final List<String?>? arg_allowList =
              (args[0] as List<Object?>?)?.cast<String?>();
          final SharedPreferencesPigeonOptions? arg_options =
              (args[1] as SharedPreferencesPigeonOptions?);
          assert(arg_options != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.UserDefaultsApi.clear was null, expected non-null SharedPreferencesPigeonOptions.');
          try {
            api.clear(arg_allowList, arg_options!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.shared_preferences_foundation.UserDefaultsApi.getAll',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.UserDefaultsApi.getAll was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final List<String?>? arg_allowList =
              (args[0] as List<Object?>?)?.cast<String?>();
          final SharedPreferencesPigeonOptions? arg_options =
              (args[1] as SharedPreferencesPigeonOptions?);
          assert(arg_options != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.UserDefaultsApi.getAll was null, expected non-null SharedPreferencesPigeonOptions.');
          try {
            final Map<String?, Object?> output =
                api.getAll(arg_allowList, arg_options!);
            return <Object?>[output];
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.shared_preferences_foundation.UserDefaultsApi.getValue',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.UserDefaultsApi.getValue was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_key = (args[0] as String?);
          assert(arg_key != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.UserDefaultsApi.getValue was null, expected non-null String.');
          final SharedPreferencesPigeonOptions? arg_options =
              (args[1] as SharedPreferencesPigeonOptions?);
          assert(arg_options != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.UserDefaultsApi.getValue was null, expected non-null SharedPreferencesPigeonOptions.');
          try {
            final Object? output = api.getValue(arg_key!, arg_options!);
            return <Object?>[output];
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.shared_preferences_foundation.UserDefaultsApi.getKeys',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.UserDefaultsApi.getKeys was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final List<String?>? arg_allowList =
              (args[0] as List<Object?>?)?.cast<String?>();
          final SharedPreferencesPigeonOptions? arg_options =
              (args[1] as SharedPreferencesPigeonOptions?);
          assert(arg_options != null,
              'Argument for dev.flutter.pigeon.shared_preferences_foundation.UserDefaultsApi.getKeys was null, expected non-null SharedPreferencesPigeonOptions.');
          try {
            final List<String?> output =
                api.getKeys(arg_allowList, arg_options!);
            return <Object?>[output];
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
  }
}
