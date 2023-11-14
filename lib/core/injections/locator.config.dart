// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cross_connectivity/cross_connectivity.dart' as _i7;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../routers/router.dart' as _i3;
import '../../services/network_info/network_info.dart' as _i5;
import '../../services/network_info/network_info_imp.dart' as _i6;
import '../../services/network_service/network_service.dart' as _i8;
import '../../services/network_service/network_service_imp.dart' as _i9;
import 'register_module.dart' as _i10;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.AppRouter>(() => registerModule.appRouter);
    gh.lazySingleton<_i4.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i5.NetworkInfo>(
        () => _i6.NetworkInfoImpl(connectivity: gh<_i7.Connectivity>()));
    gh.lazySingleton<_i8.NetworkService>(() => _i9.NetworkServiceImpl(
          gh<_i4.Dio>(),
          networkInfo: gh<_i5.NetworkInfo>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i10.RegisterModule {
  @override
  _i3.AppRouter get appRouter => _i3.AppRouter();
}
