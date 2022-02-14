import 'package:flutter/material.dart';
// import 'package:keyboard_avoider/keyboard_avoider.dart';

class ColumnPage extends StatefulWidget {
  const ColumnPage({Key? key}) : super(key: key);

  @override
  _ColumnPageState createState() => _ColumnPageState();
}

class _ColumnPageState extends State<ColumnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('column page'),
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          TextField(),
          FlutterLogo(size: 300),
          // FlutterLogo(size: 300),
          SizedBox(
            height: 100,
            child: Text('123123'),
          ),
          SizedBox(
            height: 100,
            child: Text('123123'),
          ),
          SizedBox(
            height: 100,
            child: Text('123123'),
          ),
          // Expanded(
          //   child: SizedBox(
          //     height: 100,
          //     child: Text('123123'),
          //   ),
          // ),
          SizedBox(
            height: 100,
            child: Text('123123'),
          ),
          SizedBox(
            height: 100,
            child: Text('123123'),
          ),
          // Expanded(
          //   child: Text('================'),
          // ),
          SizedBox(
            height: 100,
            child: Text('123123'),
          ),
          SizedBox(
            height: 100,
            child: Text('123123'),
          ),
          // SizedBox(
          //   height: 100,
          //   child: Text('123123'),
          // ),
          // SizedBox(
          //   height: 100,
          //   child: Text('123123'),
          // ),
          // SizedBox(
          //   height: 100,
          //   child: Text('123123'),
          // ),
          // SizedBox(
          //   height: 100,
          //   child: Text('123123'),
          // ),
          // SizedBox(
          //   height: 100,
          //   child: Text('123123'),
          // ),
          // SizedBox(
          //   height: 100,
          //   child: Text('123123'),
          // ),
          // SizedBox(
          //   height: 100,
          //   child: Text('123123'),
          // ),
        ],
      ),
    );
  }
}
