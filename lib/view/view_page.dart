import 'package:flutter/material.dart';

import '../add_prodact/view_prodact/view_prodact.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Jarnama app'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>  ViewProdact()));
          },
          child:const Icon(
            Icons.ac_unit,

          ),
        ));
  }
}
