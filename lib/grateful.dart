import 'package:flutter/material.dart';

class Grateful extends StatefulWidget {
  final int RadioGroupValue;
  const Grateful({super.key, required this.RadioGroupValue});

  @override
  State<Grateful> createState() => _GratefulState();
}

class _GratefulState extends State<Grateful> {
  final List<String> _gratefulList = ['God', 'Friends', 'Family'];

  void _radioOnChanged(int? index) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grateful'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.check),
          ),
        ],
      ),

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: RadioGroup(
            onChanged: _radioOnChanged,
            child: Row(
              children: [
                Radio(
                  value: 0,
                  groupValue: widget.RadioGroupValue,
                  onChanged: _radioOnChanged,
                ),
                Text(_gratefulList[0], style: TextStyle(fontSize: 20.0)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
