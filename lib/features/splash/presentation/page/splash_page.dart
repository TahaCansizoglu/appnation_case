import 'package:appnation_case/core/injections/locator.dart';
import 'package:appnation_case/features/splash/domain/models/dog_model.dart';
import 'package:appnation_case/features/splash/domain/repository/dog_repository.dart';
import 'package:appnation_case/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:appnation_case/gen/assets.gen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../routers/router.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashBloc(dogRepository: getIt<DogRepository>()),
      child: BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {
        return state.when(
          initial: () => const SplashWidget(),
          loading: () => const SplashWidget(),
          success: (dogList) {
            context.replaceRoute(
              HomeRoute(
                dogList: dogList,
              ),
            );
            return const SizedBox.shrink();
          },
          error: (dogListFailure) => Scaffold(
            body: Center(
              child: Text(dogListFailure.message),
            ),
          ),
        );
      }),
    );
  }

  CachedNetworkImage newMethod(List<DogModel> dogList, int index) {
    return CachedNetworkImage(
      imageUrl: dogList[index].imageUrl ?? "",
      placeholder: (context, url) => const CircleAvatar(
        child: CircularProgressIndicator(),
      ),
      errorWidget: (context, url, error) => CircleAvatar(
        child: Text(dogList[index].name[0]),
      ),
      imageBuilder: (context, imageProvider) => CircleAvatar(
        backgroundImage: imageProvider,
      ),
    );
  }
}

class SplashWidget extends StatelessWidget {
  const SplashWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Assets.images.splashLogo.image(
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
