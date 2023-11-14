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
}
