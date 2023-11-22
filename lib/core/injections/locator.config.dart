// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cross_connectivity/cross_connectivity.dart' as _i4;
import 'package:device_info_plus/device_info_plus.dart' as _i5;
import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/splash/data/repository/dog_repository_imp.dart' as _i14;
import '../../features/splash/domain/repository/dog_repository.dart' as _i13;
import '../../routers/router.dart' as _i3;
import '../../services/device_info/device_info.dart' as _i6;
import '../../services/device_info/device_info_imp.dart' as _i7;
import '../../services/network_info/network_info.dart' as _i9;
import '../../services/network_info/network_info_imp.dart' as _i10;
import '../../services/network_service/network_service.dart' as _i11;
import '../../services/network_service/network_service_imp.dart' as _i12;
import 'register_module.dart' as _i15;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.AppRouter>(() => registerModule.appRouter);
    gh.lazySingleton<_i4.Connectivity>(() => registerModule.connectivity);
    gh.lazySingleton<_i5.DeviceInfoPlugin>(
        () => registerModule.deviceInfoPlugin);
    await gh.lazySingletonAsync<_i6.DeviceInfoService>(
      () {
        final i = _i7.DeviceInfoServiceImp(
            deviceInfoPlugin: gh<_i5.DeviceInfoPlugin>());
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    gh.lazySingleton<_i8.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i9.NetworkInfo>(
        () => _i10.NetworkInfoImpl(connectivity: gh<_i4.Connectivity>()));
    gh.lazySingleton<_i11.NetworkService>(() => _i12.NetworkServiceImpl(
          gh<_i8.Dio>(),
          networkInfo: gh<_i9.NetworkInfo>(),
        ));
    gh.lazySingleton<_i13.DogRepository>(
        () => _i14.DogRepositoryImp(networkService: gh<_i11.NetworkService>()));
    return this;
  }
}

class _$RegisterModule extends _i15.RegisterModule {
  @override
  _i3.AppRouter get appRouter => _i3.AppRouter();
}
