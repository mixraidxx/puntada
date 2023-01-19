import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:puntada/brand/CommonView.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.dashboard),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
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
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff003EA7),
                        borderRadius: BorderRadius.circular(13)),
                    width: double.infinity,
                    height: 200),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class childWidget extends StatelessWidget {
  const childWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                        context: context,
                        builder: ((context) {
                          return Container(
                            height: 300,
                            color: Colors.black,
                            child: Center(
                              child: Column(
                                children: [
                                  const Text(
                                    "Código QR",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  ),
                                  QrImage(
                                    data: "1234567890",
                                    version: QrVersions.max,
                                    size: 200.0,
                                  )
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
                          "Paga con: ",
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
  }
}
