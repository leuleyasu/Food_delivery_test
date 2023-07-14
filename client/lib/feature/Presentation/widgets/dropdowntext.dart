import 'package:flutter/material.dart';

class DropDownText extends StatefulWidget {
  @override
  _DropDownTextState createState() => _DropDownTextState();
}

class _DropDownTextState extends State<DropDownText> {
   String _selectedItem="Item 1";

  List<String> _dropdownItems = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown List Example'),
      ),
      body: Center(
        child: DropdownButton(
          value: _selectedItem,
          items: _dropdownItems.map((String item) {
            return DropdownMenuItem(
              value: item,
              child: Text(item),
            );
          }).toList(),
          onChanged: (selectedItem) {
            setState(() {
              _selectedItem = selectedItem!;
            });
          },

        ),
      ),
    );
  }
}
