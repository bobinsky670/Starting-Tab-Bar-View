// ignore: file_names
import 'package:flutter/material.dart';

//ruta del archivo
//
class MyTab extends StatelessWidget {
  final String iconPath;

  const MyTab({
    super.key,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 50,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(16),
          //Borde redondeado
        ),
        child: Image.asset(
          iconPath,
          color: Colors.grey,
        ),
      ),
    );
  }
}
