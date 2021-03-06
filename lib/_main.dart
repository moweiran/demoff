import 'package:demoff/CounterNotifier.dart';
import 'package:demoff/main4.dart';
import 'package:demoff/sliverPage.dart';
import 'package:demoff/state-test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'columnPage.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        // Provider<StateTest>(create: (_) => StateTest()),
        ChangeNotifierProvider(create: (context) => StateTest()),
        ChangeNotifierProvider(create: (context) => CounterNotifier()),
      ],
      child: MyApp4(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  DateTime time = DateTime.now();
  StateTest testCtrl = StateTest();

  _incrementCounter() {
    testCtrl.setUserId(_counter++);
    // setState(() {
    //   // This call to setState tells the Flutter framework that something has
    //   // changed in this State, which causes it to rerun the build method below
    //   // so that the display can reflect the updated values. If we changed
    //   // _counter without calling setState(), then the build method would not be
    //   // called again, and so nothing would appear to happen.
    //   _counter++;
    // });
    // Navigator.of(context).push(
    //   MaterialPageRoute(builder: (context) => const ColumnPage()),
    // );

    // Navigator.of(context).push(
    //   MaterialPageRoute(builder: (context) => const SliverPage()),
    // );

    // showModalBottomSheet(
    //   context: context,
    //   backgroundColor: Colors.transparent,
    //   // isScrollControlled: true,
    //   constraints: const BoxConstraints(
    //     maxHeight: 200,
    //   ),
    //   builder: (context) {
    //     return Container(
    //       decoration: const BoxDecoration(
    //         color: Colors.white,
    //         borderRadius: BorderRadius.all(Radius.circular(15)),
    //       ),
    //       padding: const EdgeInsets.only(top: 0, left: 10, right: 10.0),
    //       child: Column(
    //         mainAxisSize: MainAxisSize.min,
    //         children: [
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               TextButton(
    //                 onPressed: () {
    //                   Navigator.of(context).pop();
    //                 },
    //                 child: const Text('??????'),
    //               ),
    //               const Expanded(
    //                 child: Align(
    //                   alignment: Alignment.center,
    //                   child: Text(
    //                     '???????????????',
    //                     style: TextStyle(
    //                       color: Colors.blue,
    //                       fontSize: 20,
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //               TextButton(
    //                 onPressed: () {
    //                   Navigator.of(context).pop();
    //                   showAboutDialog(
    //                     context: context,
    //                     children: [
    //                       Text("${time}"),
    //                     ],
    //                   );
    //                 },
    //                 child: const Text('??????'),
    //               )
    //             ],
    //           ),
    //           Expanded(
    //             child: CupertinoDatePicker(
    //               initialDateTime: time,
    //               onDateTimeChanged: (v) {
    //                 print("$v");
    //                 time = v;
    //               },
    //             ),
    //           ),
    //         ],
    //       ),
    //     );
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return ChangeNotifierProvider.value(
      value: testCtrl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              // Text('${context.watch<StateTest>().userId}')
              Consumer(
                builder: (BuildContext context, StateTest cart, Widget? child) {
                  return Text("Total price: ${cart.userId}");
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
