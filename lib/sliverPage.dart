import 'package:flutter/material.dart';

class SliverPage extends StatefulWidget {
  const SliverPage({Key? key}) : super(key: key);

  @override
  _SliverPageState createState() => _SliverPageState();
}

class _SliverPageState extends State<SliverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sliver page'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Placeholder(),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              FlutterLogo(),
            ]),
          ),
        ],
      ),
    );
  }
}
