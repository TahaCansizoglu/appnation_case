import 'package:appnation_case/services/device_info/device_info.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DeviceInfoService)
final class DeviceInfoServiceImp implements DeviceInfoService {
  final DeviceInfoPlugin deviceInfoPlugin;
  late final BaseDeviceInfo baseDeviceInfo;

  DeviceInfoServiceImp({required this.deviceInfoPlugin});

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    baseDeviceInfo = await deviceInfoPlugin.deviceInfo;
  }

  @override
  String getDeviceOSAndVersion() {
    if (baseDeviceInfo is AndroidDeviceInfo) {
      return (baseDeviceInfo as AndroidDeviceInfo).version.release;
    } else if (baseDeviceInfo is IosDeviceInfo) {
      return (baseDeviceInfo as IosDeviceInfo).systemVersion;
    } else {
      return "Unknown";
    }
  }
}
