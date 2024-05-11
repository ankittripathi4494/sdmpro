// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'dart:io';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  late String imageFile;
   HomePage({
    super.key,
    required this.imageFile,
  });
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
   

    return Scaffold(
      body: Image.file(File(widget.imageFile)),
    );
  }
}