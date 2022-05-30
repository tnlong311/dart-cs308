import 'package:flutter/material.dart';

class CustomDropdownButton extends StatelessWidget {
  const CustomDropdownButton(
      {Key? key, required this.dropdownValue, required this.onChange})
      : super(key: key);

  final int dropdownValue;
  final Function onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: Colors.blue[900],
      ),
      alignment: Alignment.center,
      child: DropdownButton<int>(
        value: dropdownValue,
        icon: const Icon(
          Icons.arrow_downward,
          size: 35.0,
          color: Colors.white,
        ),
        dropdownColor: Colors.blue[800],
        elevation: 16,
        onChanged: (int? newVal) => onChange(newVal),
        items: <int>[1, 2, 3, 4].map<DropdownMenuItem<int>>((int index) {
          return DropdownMenuItem<int>(
            value: index,
            child: Text(
              'LEVEL $index',
              style: Theme.of(context).textTheme.labelMedium,
            ),
          );
        }).toList(),
      ),
    );
  }
}
