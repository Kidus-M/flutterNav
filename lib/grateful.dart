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

  void _radioOnChanged(int index) {
    setState(() {
      _radioGroupValue = index;
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
              Navigator.of(context).pop(_selectedGrateful);
            },
            icon: const Icon(Icons.check),
          ),
        ],
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: RadioGroup<int>(
            groupValue: _radioGroupValue,
            onChanged: (int? value) {
              if (value == null) {
                return;
              }
              _radioOnChanged(value);
            },
            child: Column(
              children: [
                ListTile(
                  leading: const Radio<int>(value: 0),
                  title: Text(
                    _gratefulList[0],
                    style: const TextStyle(fontSize: 20.0),
                  ),
                ),
                ListTile(
                  leading: const Radio<int>(value: 1),
                  title: Text(
                    _gratefulList[1],
                    style: const TextStyle(fontSize: 20.0),
                  ),
                ),
                ListTile(
                  leading: const Radio<int>(value: 2),
                  title: Text(
                    _gratefulList[2],
                    style: const TextStyle(fontSize: 20.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
