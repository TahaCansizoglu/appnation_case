import 'package:appnation_case/core/injections/locator.dart';
import 'package:appnation_case/features/home/presentation/widgets/dog_dialog.dart';
import 'package:appnation_case/features/splash/domain/models/dog_model.dart';
import 'package:appnation_case/features/splash/domain/repository/dog_repository.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:draggable_menu/draggable_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bloc/home_bloc.dart';

@RoutePage()
class HomePage extends StatefulWidget implements AutoRouteWrapper {
  final List<DogModel>? dogList;
  const HomePage({super.key, required this.dogList});

  @override
  State<HomePage> createState() => _HomePageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(dogList: dogList, dogRepository: getIt<DogRepository>()),
      child: this,
    );
  }
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late final DraggableMenuController _draggableMenuController;
  late final TextEditingController _textEditingController;
  @override
  void initState() {
    _draggableMenuController = DraggableMenuController();
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _draggableMenuController.dispose();
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Dog Breeds"),
            centerTitle: true,
          ),
          body: Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: context.watch<HomeBloc>().state.dogList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () async {
                      final bloc = context.read<HomeBloc>();
                      await showDialog(
                        context: context,
                        builder: (context) => BlocProvider<HomeBloc>.value(
                          value: bloc,
                          child: DogDialog(
                            dogModel: widget.dogList?[index],
                          ),
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(
                              widget.dogList?[index].imageUrl ?? "",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8.r),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8.0.r),
                                child: Text(
                                  widget.dogList?[index].name ?? "",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.sp,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 8.0.h),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: Size(double.maxFinite, 56.h),
                      alignment: Alignment.centerLeft,
                    ),
                    onPressed: () async {
                      await DraggableMenu.open(
                          context,
                          DraggableMenu(
                            controller: _draggableMenuController,
                            ui: const ClassicDraggableMenu(
                              color: Colors.white,
                            ),
                            levels: [
                              DraggableMenuLevel.ratio(ratio: 3 / 5),
                              DraggableMenuLevel.ratio(ratio: 1),
                            ],
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                autofocus: true,
                                decoration: const InputDecoration(
                                  hintText: "Search",
                                  border: InputBorder.none,
                                ),
                                maxLines: null,
                                onChanged: (value) {},
                                onFieldSubmitted: (value) {
                                  context.read<HomeBloc>().searchInDogList(value);
                                  context.popRoute();
                                },
                              ),
                            ),
                          ));
                    },
                    child: const Text(
                      "Search",
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ],
          ),
        );
      },
    );
  }
}
