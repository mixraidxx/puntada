import 'package:flutter/material.dart';
import 'package:puntada/brand/Colors.dart';
import 'package:puntada/brand/CommonView.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:puntada/cubit/home/home_cubit.dart';
import 'package:puntada/services/User.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  var nombre = "";

  @override
  void initState() {
    context.read<HomeCubit>().getClientData("clientID");
    nombre = User().getNombreCompleto()!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.dashboard),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/login");
                },
                icon: const Icon(Icons.exit_to_app))
          ],
        ),
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return Stack(
              alignment: Alignment.center,
              children: [
                CommonView(
                    mainView: Column(
                      children: [
                        const CircleAvatar(
                          radius: 40,
                          child: Icon(
                            Icons.person,
                            size: 50,
                          ),
                        ),
                        Text(
                          "Bienvenido",
                          style: TextStyle(color: BrandColors.terciaryColor),
                        ),
                        Text(
                          nombre,
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        const Chip(
                          label: Text(
                            "Bronce",
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Colors.black,
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "Promociones",
                          style: TextStyle(color: Colors.white, fontSize: 26),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        CarouselSlider(
                          options: CarouselOptions(
                              height: 250.0, enableInfiniteScroll: false),
                          items: [1, 2, 3, 4, 5].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset("assets/promo.png"),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            'Detalles de la promoción',
                                            style: TextStyle(fontSize: 16.0),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8, right: 8),
                                          child: Text(
                                            "Texto secundario con información detalla de la promoción.",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                          ),
                                        ),
                                      ],
                                    ));
                              },
                            );
                          }).toList(),
                        ),
                      ],
                    )),
                Positioned(
                  top: 170,
                  child: Row(
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 90,
                            height: 90,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "494",
                                  style: Theme.of(context).textTheme.headline2,
                                ),
                                const Chip(
                                  label: Text(
                                    "Puntos",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor: Colors.black,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 90,
                            height: 90,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "\$49.40",
                                  style: Theme.of(context).textTheme.headline5,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 90,
                            height: 90,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Descuento con:",
                                ),
                                Text("QR")
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ));
  }
}
