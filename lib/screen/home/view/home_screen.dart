import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quotes_app/screen/home/provider/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? providerR;
  HomeProvider? providerW;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<HomeProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    providerR = context.read<HomeProvider>();
    providerW = context.watch<HomeProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quotes"),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: providerW!.q1 == null
          ? const Center(child: CircularProgressIndicator())
          : Expanded(
              child: ListView.builder(
              itemCount: providerW!.q1!.resultList!.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "${providerW!.q1!.resultList![index].content}",
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              },
            )),
    );
  }
}
