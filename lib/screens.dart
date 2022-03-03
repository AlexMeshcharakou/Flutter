import 'package:flutter/material.dart';
import 'package:module_three/app_routes.dart';
import 'package:module_three/navigator_app.dart';

class FirstScreen extends StatelessWidget {
  final String? inputData;

  const FirstScreen({Key? key, required this.inputData}) : super(key: key);

  Future<Future<bool?>> showExitDialog(BuildContext context) async =>
      showDialog<bool>(
        context: context,
        builder: (context) =>
            AlertDialog(
              title: const Text('Question'),
              content: const Text('Do you want to exit?'),
              actions: <Widget>[
                TextButton(
                  child: const Text('Yes'),
                  onPressed: () => Navigator.of(context).pop(true),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text('No'),
                ),
              ],
            ),
      );

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => (showExitDialog(context)) as Future<bool>,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              title: const Text('Module three'),
              leading: IconButton(
                onPressed: () async {
                  bool exit = await (showExitDialog(context)) as Future<bool>;
                  if (exit) {
                  Navigator.of(context).pop();
                  }
                },
                icon: const Icon(Icons.arrow_back),
              )),
          body: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(AppRoutes.secondScreen),
                  child: const Text('Go next'),
                ),
              ),
              Text('$inputData'),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () =>
                    Navigator.of(context)
                        .pushNamed(AppRoutes.home, arguments: 'Return 42'),
                child: const Text('Return 42'),
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: ElevatedButton(
                onPressed: () =>
                    Navigator.of(context)
                        .pushNamed(
                        AppRoutes.home, arguments: 'Return AbErVaLIG'),
                child: const Text('Return AbErVaLIG'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
