import 'package:flutter/material.dart';

class Grateful extends StatefulWidget {
  final int radioGroupValue;
  const Grateful({super.key, required this.radioGroupValue});

  @override
  State<Grateful> createState() => _GratefulState();
}

class _GratefulState extends State<Grateful> {
  final List<String> _gratefulList = [];
  late String _selectedGrateful;
  late int _radioGroupValue;

  void _radioOnChanged(int? index) {
    setState(() {
      _radioGroupValue = index!;
      _selectedGrateful = _gratefulList[index];
    });
  }

  @override
  void initState() {
    super.initState();
    _gratefulList
      ..add('God')
      ..add('Family')
      ..add('Friends');
    _radioGroupValue = widget.radioGroupValue;
    _selectedGrateful = _gratefulList[_radioGroupValue];
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
                  groupValue: widget.radioGroupValue,
                  onChanged: _radioOnChanged,
                ),
                Text(_gratefulList[0], style: TextStyle(fontSize: 20.0)),
                Radio(
                  value: 1,
                  groupValue: widget.radioGroupValue,
                  onChanged: _radioOnChanged,
                ),
                Text(_gratefulList[1], style: TextStyle(fontSize: 20.0)),
                Radio(
                  value: 2,
                  groupValue: widget.radioGroupValue,
                  onChanged: _radioOnChanged,
                ),
                Text(_gratefulList[2], style: TextStyle(fontSize: 20.0)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
