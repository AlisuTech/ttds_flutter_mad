import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SingleChildWidget extends StatelessWidget {
  const SingleChildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // SizedBo Layout Widget

    // return const SizedBox(
    //   height: 100,
    //   width: 100,
    //   child: Text('This is a SizedBox'),
    // );
    // return const SizedBox.expand();
    // return const SizedBox.shrink();
    // return SizedBox.fromSize(size: const Size(100,100),);

    //Container Layout Widget
    return Container(
      // color: Colors.red,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      // alignment: Alignment.topLeft,
      decoration: const BoxDecoration(
          // color: Colors.blue,
          // border: Border.all(
          //     color: Colors.red, width: 10, style: BorderStyle.solid)),
          // border: Border.symmetric(
          //     vertical: BorderSide(color: Colors.red, width: 10)),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.red,
              blurRadius: 10,
              blurStyle: BlurStyle.outer,
            )
          ],
          // image: DecorationImage(
          //     image: AssetImage("assets/images/5.png"), fit: BoxFit.cover),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [Colors.red, Colors.blue, Colors.pink])),
      // transform: Matrix4.rotationZ(0.5),
      constraints: const BoxConstraints(minWidth: 200, maxWidth: 200),
      // foregroundDecoration: BoxDecoration(color: Colors.red),
      child: const Text(
        "This is a container, if I add new content in other to make my width bigger",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  double calculate() {
    return 0;
  }
}
//degrees radians 
