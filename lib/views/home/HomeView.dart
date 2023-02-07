import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:puntada/brand/CommonView.dart';
import 'package:puntada/cubit/home/home_cubit.dart';

import '../../services/User.dart';

class HomeView extends StatefulWidget {
  static String routeName = "/home";
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    context.read<HomeCubit>().getQr();
    var nombre = User().getNombreCompleto()!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.dashboard),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {},
          )
        ],
      ),
      body: Stack(
        children: [
          CommonView(
            mainView: Column(
              children: [
                Text(
                  "Tarjeta virtual",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
            child: const childWidget(),
          ),
          Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Stack(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: const Color(0xff003EA7),
                            borderRadius: BorderRadius.circular(13)),
                        width: double.infinity,
                        height: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  'assets/logo.svg',
                                  height: 30,
                                  color: Colors.white,
                                )
                              ]),
                        )),
                    SvgPicture.asset('assets/background_card.svg',
                        height: 200,
                        color: const Color.fromARGB(102, 28, 90, 171)),
                    const Positioned.fill(
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: 8, right: 8, bottom: 20),
                            child: Text(
                              "4 10000001388 00001",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class childWidget extends StatefulWidget {
  const childWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<childWidget> createState() => _childWidgetState();
}

class _childWidgetState extends State<childWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Uint8List? _bytesImage;
    return BlocConsumer<HomeCubit, HomeState>(
      bloc: context.read<HomeCubit>(),
      listener: (context, state) {
        if (state is HomeSuccess) {
          _bytesImage =
              const Base64Decoder().convert(state.image.replaceAll("\"", ""));
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "4 10000001388 00001",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    "Número de tarjeta",
                    style: Theme.of(context).textTheme.headline6,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Miembro desde:",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Text(
                            "09/02/19",
                            style: Theme.of(context).textTheme.headline2,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        showBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: ((context) {
                              return Container(
                                height: 450,
                                decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        topRight: Radius.circular(16))),
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Text(
                                        User().getNombreCompleto()!,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      const Text(
                                        "Descuento: 0.15 \$/litro",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      const Text(
                                        "494",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Image.memory(_bytesImage!)
                                    ],
                                  ),
                                ),
                              );
                            }));
                      },
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Descuento con: ",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            Text(
                              "QR",
                              style: Theme.of(context).textTheme.headline2,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
