import 'package:flutter/material.dart';

class BackHome extends StatefulWidget {
  const BackHome({super.key});

  @override
  State<BackHome> createState() => _TextButtonExampleAppState();
}

class _TextButtonExampleAppState extends State<BackHome> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          Color.fromARGB(179, 227, 241, 255),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            side: BorderSide(color: const Color.fromARGB(255, 227, 241, 255)),
          ),
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/');
      },
      child: Icon(Icons.arrow_back_ios_new),
    );
  }
}
