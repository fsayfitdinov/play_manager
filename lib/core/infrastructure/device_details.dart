import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:package_info/package_info.dart';

part 'device_details.freezed.dart';

@freezed
class DeviceDetails with _$DeviceDetails {
  const DeviceDetails._();

  const factory DeviceDetails({
    required String appVersion,
    required String system,
    required String systemVersion,
    required String deviceId,
    required String deviceName,
    required String systemName,
  }) = _DeviceDetails;
}

class DeviceInfoDetails {
  Future<DeviceDetails?> getDeviceDetails() async {
    final packageInfo = await PackageInfo.fromPlatform();
    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    try {
      if (Platform.isAndroid) {
        final build = await deviceInfoPlugin.androidInfo;
        return DeviceDetails(
          appVersion: packageInfo.version,
          system: 'Android',
          systemVersion: build.version.release,
          systemName: build.version.codename,
          deviceId: build.androidId,
          deviceName: build.model,
        );
      } else if (Platform.isIOS) {
        final data = await deviceInfoPlugin.iosInfo;
        return DeviceDetails(
          appVersion: packageInfo.version,
          system: 'iOS',
          systemVersion: data.systemVersion,
          systemName: data.utsname.sysname,
          deviceId: data.identifierForVendor,
          deviceName: data.name,
        );
      }
    } on PlatformException catch (_) {
      return null;
    }
  }
}
