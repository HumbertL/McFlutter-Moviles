// ignore: slash_for_doc_comments
/***
 * @AUTHOR: HUMBERTO LONGORIA
 * @DATE: 3/08/2022
 * McFlutter 
 */

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: McFlutterHomePage(),
    );
  }
}

class McFlutterHomePage extends StatefulWidget {
  const McFlutterHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<McFlutterHomePage> createState() => _McFlutterHomePageState();
}

class _McFlutterHomePageState extends State<McFlutterHomePage> {
  //Pagina de McFlutter
  @override
  //boleanos para poder gestionar el color de los botones al presionarse
  bool ispersonselected = false;
  bool istimerselected = false;
  bool isiphonesselected = false;
  bool isphoneselected = false;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('McFlutter'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person_outline_rounded,
                      size: 60,
                    ),
                    Column(
                      children: [
                        Text(
                          "Flutter McFlutter",
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          "Experienced App Developer",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("123 Main Street"), Text("(415) 555-0198")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {
                          ispersonselected = !ispersonselected;

                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(const SnackBar(
                                content: Text(
                                    "Únete a un club con otras personas")));
                          setState(() {});
                        },
                        color: ispersonselected ? Colors.indigo : Colors.grey,
                        icon: Icon(Icons.man_sharp)),
                    IconButton(
                        onPressed: () {
                          istimerselected = !istimerselected;

                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(const SnackBar(
                                content: Text(
                                    "Cuenta regresiva para el evento: 31 días")));
                          setState(() {});
                        },
                        color: istimerselected ? Colors.indigo : Colors.grey,
                        icon: Icon(Icons.timer)),
                    IconButton(
                        onPressed: () {
                          isphoneselected = !isphoneselected;
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(const SnackBar(
                                content: Text("Llama al número 4155550198")));
                          setState(() {});
                        },
                        color: isphoneselected ? Colors.indigo : Colors.grey,
                        icon: Icon(Icons.phone_android)),
                    IconButton(
                        onPressed: () {
                          isiphonesselected = !isiphonesselected;
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(const SnackBar(
                                content: Text("Llama al celular 3317865113")));
                          setState(() {});
                        },
                        color: isiphonesselected ? Colors.indigo : Colors.grey,
                        icon: Icon(Icons.phone_iphone)),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
