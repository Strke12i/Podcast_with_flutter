import 'package:flutter/material.dart';

class PodcastScreen extends StatefulWidget{
  const PodcastScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PodcastScreenState createState() => _PodcastScreenState();

}

class _PodcastScreenState extends State<PodcastScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: const Center(
        child: Text('Podcast Screen'),
      ),
    );
  }
}
