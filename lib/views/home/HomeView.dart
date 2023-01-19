import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: const Icon(Icons.dashboard),
        actions: const [Icon(Icons.person)],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 32,
          ),
          Center(
            child: Text(
              "Tarjeta Virtual",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(13.5)),
              width: double.infinity,
              child: AspectRatio(
                  aspectRatio: 7 / 4,
                  child: Container(
                    child: Text("Aspect Ratio 16:9"),
                  )),
            ),
          ),
          Container(
            decoration: const BoxDecoration(color: Colors.white),
            width: double.infinity,
            child: Text("fsdfsd"),
          )
        ],
      ),
    );
  }
}
