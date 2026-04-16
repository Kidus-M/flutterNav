import 'package:flutter/material.dart';

class Grateful extends StatefulWidget {
  final int RadioGroupValue;
  const Grateful({super.key, required this.RadioGroupValue});

  @override
  State<Grateful> createState() => _GratefulState();
}

class _GratefulState extends State<Grateful> {
    final List<String> _gratefulList = List<String>();

    void _radioOnChanged(int? index) 
    {
      
    }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text('Grateful'),
        actions: [
          IconButton(
            onPressed: () {Navigator.of(context).pop();},
            icon: const Icon(Icons.check),
          ),
        ],
      ),

    )
  }
}
