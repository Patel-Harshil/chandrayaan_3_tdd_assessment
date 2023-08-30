import 'package:chandrayaan_3_tdd_assessment/space_craft.dart';
import 'package:chandrayaan_3_tdd_assessment/enum.dart';
import 'package:flutter/material.dart';

class SpaceCraftPage extends StatefulWidget {
  const SpaceCraftPage({super.key, required this.title});
  final String title;

  @override
  State<SpaceCraftPage> createState() => _SpaceCraftPageState();
}

class _SpaceCraftPageState extends State<SpaceCraftPage> {
  SpaceCraft chandrayaan = SpaceCraft.load(
      face: FaceDirection.north,
      head: FaceDirection.up,
      xPosition: 0,
      yPosition: 0,
      zPosition: 0);
  late TextEditingController _controller;

  moveLeft() {
    setState(() {
      chandrayaan.moveLeft();
    });
  }

  moveRight() {
    setState(() {
      chandrayaan.moveRight();
    });
  }

  moveUp() {
    setState(() {
      chandrayaan.moveUp();
    });
  }

  moveDown() {
    setState(() {
      chandrayaan.moveDown();
    });
  }

  moveForward() {
    setState(() {
      chandrayaan.moveForward();
    });
  }

  moveBackward() {
    setState(() {
      chandrayaan.moveBackward();
    });
  }

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background_image.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Text
            const Text(
              "India, I reached my destination and you too! Let's move in moon's orbit :)",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            Text(
              "Face ${chandrayaan.face}, Head ${chandrayaan.head} ",
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              "Position(${chandrayaan.xPosition},${chandrayaan.yPosition},${chandrayaan.zPosition})",
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),

            // Movement Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    actionButton("Up", Icons.arrow_upward, moveUp),
                    const SizedBox(height: 10), // Adding padding
                    actionButton("Down", Icons.arrow_downward, moveDown),
                  ],
                ),
                Column(
                  children: [
                    actionButton("Left", Icons.arrow_back, moveLeft),
                    const SizedBox(height: 10), // Adding padding
                    actionButton("Right", Icons.arrow_forward, moveRight),
                  ],
                ),
                Column(
                  children: [
                    actionButton("Forward", Icons.circle, moveForward),
                    const SizedBox(height: 10), // Adding padding
                    actionButton(
                        "Backward", Icons.circle_outlined, moveBackward),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

ElevatedButton actionButton(
    String text, IconData icon, void Function()? function) {
  return ElevatedButton(
    onPressed: function,
    child: Column(
      children: [
        Icon(
          icon,
          // color: Colors.black,
        ),
        Text(text),
      ],
    ),
  );
}
