import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto/providers/TestProvider.dart';

class Load extends StatefulWidget {
  const Load({ super.key });

  @override
  _LoadState createState() => _LoadState();
}

class _LoadState extends State<Load> {

  @override
  Widget build(BuildContext context) {
    var state = context.watch<TestProvider>();
    return const Scaffold(
      body: Text("Hola"),
    );
  }
}