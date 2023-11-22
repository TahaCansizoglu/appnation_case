import 'package:appnation_case/constants/colors.dart';
import 'package:appnation_case/features/home/presentation/bloc/home_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../splash/domain/models/dog_model.dart';

class DogDialog extends StatelessWidget {
  const DogDialog({
    super.key,
    required this.dogModel,
  });

  final DogModel? dogModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            contentPadding: EdgeInsets.zero,
            content: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: CachedNetworkImage(
                        imageUrl: dogModel?.imageUrl ?? "",
                        placeholder: (context, url) => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        errorWidget: (context, url, error) => const Center(
                          child: Icon(Icons.error),
                        ),
                        imageBuilder: (context, imageProvider) => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.r),
                              topRight: Radius.circular(12.r),
                            ),
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        const _BlueHeader(text: "Breed"),
                        const _CutomDivider(),
                        Text(dogModel?.name ?? ""),
                        SizedBox(
                          height: 10.h,
                        ),
                        const _BlueHeader(text: "Sub Breed"),
                        const _CutomDivider(),
                        //List sub breeds
                        (dogModel?.subBreeds.length ?? 0) != 0
                            ? SizedBox(
                                height: 50.h,
                                width: double.maxFinite,
                                child: ListView.builder(
                                  itemCount: dogModel?.subBreeds.length ?? 0,
                                  itemBuilder: (context, index) {
                                    return Text(
                                      dogModel?.subBreeds[index] ?? "",
                                      textAlign: TextAlign.center,
                                    );
                                  },
                                ),
                              )
                            : const SizedBox(
                                width: double.maxFinite,
                              ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.r),
                          child: ElevatedButton(
                            onPressed: () async {
                              //show generate dialog
                              context.read<HomeBloc>().generateRandomDogEvent();

                              await showDialog(
                                context: context,
                                builder: (dialogContext) {
                                  //show image
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 256.h,
                                        width: 256.w,
                                        child: CachedNetworkImage(
                                          imageUrl: context
                                                  .read<HomeBloc>()
                                                  .state
                                                  .mapOrNull(generated: (generated) => generated.url) ??
                                              "",
                                          placeholder: (context, url) => const Center(
                                            child: CircularProgressIndicator(),
                                          ),
                                          errorWidget: (context, url, error) => const Center(
                                            child: Icon(Icons.error),
                                          ),
                                          imageBuilder: (context, imageProvider) => Container(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: imageProvider,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          context.popRoute();
                                        },
                                        style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          alignment: Alignment.center,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(2.r),
                                          ),
                                          backgroundColor: Colors.white,
                                          fixedSize: Size(32.h, 32.h),
                                          minimumSize: Size(32.h, 32.h),
                                        ),
                                        child: Icon(
                                          Icons.close,
                                          size: 20.h,
                                          color: Colors.black,
                                        ),
                                      ),
                                      // Close button
                                    ],
                                  );
                                },
                              );
                            },
                            style: ElevatedButton.styleFrom(fixedSize: Size(double.maxFinite, 56.h)),
                            child: const Text("Generate", style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const Positioned(
                    top: 10,
                    right: 10,
                    child: _CustomButton(
                      shape: BoxShape.circle,
                    ))
              ],
            ));
      },
    );
  }

  Future<T?> show<T>(BuildContext context) {
    return showDialog<T>(
      context: context,
      barrierDismissible: false,
      useRootNavigator: false,
      builder: (context) => BlocProvider.value(
        value: context.read<HomeBloc>(),
        child: this,
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton({required this.shape});
  final BoxShape shape;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: shape,
      ),
      child: Padding(
        padding: EdgeInsets.all(6.0.r),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.close,
          ),
        ),
      ),
    );
  }
}

class _CutomDivider extends StatelessWidget {
  const _CutomDivider();

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 2,
      indent: 30,
      endIndent: 30,
    );
  }
}

class _BlueHeader extends StatelessWidget {
  const _BlueHeader({
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0.h),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, color: buttonColor, fontSize: 20),
      ),
    );
  }
}
