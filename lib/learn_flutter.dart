import 'package:flutter/material.dart';

class LearnFlutter extends StatefulWidget {
  @override
  _LearnFlutterState createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  String _selectedindex = flowerItems.first;

  static final List<String> flowerItems = <String>[
    'Rose',
    'Lily',
    'Tulip',
    'Orchid',
    'Freesia'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.indigo, title: Text('Dropdown Button')),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          color: Colors.redAccent,
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              // isExpanded: true,
              dropdownColor: Colors.blueGrey,
              value: _selectedindex,
              onChanged: (value) => setState(() {
                _selectedindex = value;
              }),
              items: flowerItems
                  .map((item) => DropdownMenuItem(
                        child: Text(
                          item,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        value: item,
                      ))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
