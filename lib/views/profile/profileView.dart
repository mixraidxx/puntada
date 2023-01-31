import 'package:flutter/material.dart';
import 'package:puntada/brand/Colors.dart';
import 'package:puntada/brand/CommonView.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.dashboard),
        ),
        body: Stack(
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
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Bienvenido",
                      style: TextStyle(color: BrandColors.terciaryColor),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Nombre del usuario",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    const Chip(
                      label: Text(
                        "Nivel de usuario",
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.black,
                    )
                  ],
                ),
                child: Container(
                  child: Column(
                    children: [
                      const Text(
                        "Promociones",
                        style: TextStyle(color: Colors.white, fontSize: 26),
                      ),
                      CarouselSlider(
                        options: CarouselOptions(
                            height: 300.0, enableInfiniteScroll: false),
                        items: [1, 2, 3, 4, 5].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    'text $i',
                                    style: const TextStyle(fontSize: 16.0),
                                  ));
                            },
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ))
          ],
        ));
  }
}
