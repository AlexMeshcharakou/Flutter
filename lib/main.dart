import 'package:flutter/material.dart';
import 'package:module_two/my_app_bar.dart';

import 'my_app_bar.dart';
import 'my_list_view_widget.dart';
import 'my_text_widget.dart';

final List<String> names = ['Vasya', 'Aliaksei', 'Aleksandr'];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: MyAppBar(),
        body: Container(
          color: Colors.yellow,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150,
                    height: 100,
                    alignment: Alignment.center,
                    child: const Text(
                      'Grodno',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 100,
                    alignment: Alignment.center,
                    child: const Text(
                      'Belarus',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 200,
                    alignment: Alignment.topCenter,
                    child: const Text(
                      'EPAM',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                        // shadows:
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: double.infinity,
                height: 200,
                child: MyListViewWidget(),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
                    width: 300,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: names.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: MyTextWidget(
                            text: names[index],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.red,
          child: const Icon(Icons.accessibility),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniStartDocked,
      ),
    );
  }
}
