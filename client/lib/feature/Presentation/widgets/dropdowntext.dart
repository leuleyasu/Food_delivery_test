import 'package:flutter/material.dart';

class DropdownListExample extends StatefulWidget {
  const DropdownListExample({super.key});

  @override
  DropDownReuse createState() => DropDownReuse();
}

class DropDownReuse extends State<DropdownListExample> {
  String _selectedItem="12th Street, Wosen Grocery";

  List<String> _dropdownItems = [
    '12th Street, Wosen Grocery',
    '14th Street, Wosen Grocery',
    '13th Street, Wosen Grocery',
    '15th Street, Wosen Grocery',
  ];

  @override
  Widget build(BuildContext context) {
    return  Container(

          width: 200, // Adjust the width according to your requirements
          child: DropdownButtonHideUnderline(
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
