// 

import 'package:flutter/material.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key, required this.image, required this.name});
  final String image;
  final String name;

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Movie'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(widget.image),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                widget.name,
                style: TextStyle(fontSize: 30),
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}
