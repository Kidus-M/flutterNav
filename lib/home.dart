import 'package:flutter/material.dart';
import 'about.dart';
import 'grateful.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _howareyou = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: const Text('Navigation'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () =>
                _openAboutPage(context: context, fullpageDialog: true),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text("Gratefull for : $_howareyou"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openGratefullPage(context: context),
        tooltip: "gratefull",
        backgroundColor: Colors.purpleAccent,
        child: const Icon(Icons.sentiment_satisfied),
      ),
    );
  }

  void _openAboutPage({
    required BuildContext context,
    bool fullpageDialog = false,
  }) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const About(),
        fullscreenDialog: fullpageDialog,
      ),
    );
  }

  void _openGratefullPage({
    required BuildContext context,
    bool fullpageDialog = false,
  }) async {
    final result = await Navigator.of(context).push<String>(
      MaterialPageRoute(
        builder: (context) => const Grateful(radioGroupValue: 0),
        fullscreenDialog: fullpageDialog,
      ),
    );
    setState(() {
      _howareyou = result ?? "";
    });
  }
}
