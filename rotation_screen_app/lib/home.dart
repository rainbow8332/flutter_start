import 'package:flutter/material.dart';
import 'package:rotation_screen_app/widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  WidgetDart wd = WidgetDart();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rocation Screen')),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return wd.portraitMode();
          } else {
            return wd.landscapeMode();
          }
        },
      ),
    );
  }

// ----------- -Function ------------
  // Widget portraitMode() {
  //   return Stack(
  //     children: const [
  //       Center(
  //         child: Text('Portait Mode'),
  //       )
  //     ],
  //   );
  // }

  // Widget landscapeMode() {
  //   return Stack(
  //     children: const [
  //       Center(
  //         child: Text('Landscape Mode'),
  //       )
  //     ],
  //   );
  // }


} // End
