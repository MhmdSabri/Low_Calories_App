import 'package:flutter/material.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          color: Colors.black,
        ),
        Container(
          height: 50,
          width: 50,
          color: Colors.red,
        ),
        Container(
          height: 50,
          width: 50,
          color: Colors.blue,
        ),
      ],
    );
  }
}
