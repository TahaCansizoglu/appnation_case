import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../constants/endpoints.dart';
import '../../routers/router.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  AppRouter get appRouter;

  @lazySingleton
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: Endpoints.baseUrl,
        ),
      );

  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @lazySingleton
  DeviceInfoPlugin get deviceInfoPlugin => DeviceInfoPlugin();
}
