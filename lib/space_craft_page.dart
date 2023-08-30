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
  // Creating SpaceCraft object
  SpaceCraft chandrayaan = SpaceCraft.load(
      face: FaceDirection.north,
      head: FaceDirection.up,
      xPosition: 0,
      yPosition: 0,
      zPosition: 0);
  late TextEditingController _controller;
  String input = "";

  resetCraft() {
    setState(() {
      chandrayaan = SpaceCraft.load(
          face: FaceDirection.north,
          head: FaceDirection.up,
          xPosition: 0,
          yPosition: 0,
          zPosition: 0);
    });
  }

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

  moveAsync() {
    input = _controller.text;
    for (int i = 0; i < input.length; i++) {
      setState(
        () {
          var movement = input[i].toLowerCase();
          switch (movement) {
            case "r":
              moveRight();
              break;
            case "l":
              moveLeft();
              break;
            case "f":
              moveForward();
            case "b":
              moveBackward();
              break;
            case "u":
              moveUp();
              break;
            case "d":
              moveDown();
              break;
          }
        },
      );
    }
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
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Text(
              "Facing ${chandrayaan.face.toString().split(".").last}, Head ${chandrayaan.head.toString().split(".").last} (${chandrayaan.xPosition},${chandrayaan.yPosition},${chandrayaan.zPosition}) ",
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            Container(
                padding: const EdgeInsets.all(20),
                color: Colors.white70,
                child: Icon(
                  chandrayaan.icon,
                  size: 50,
                )),

            // Movement Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    actionButton("Up", Icons.arrow_upward, moveUp),
                    const SizedBox(height: 10), // Adding padding
                    actionButton("Down", Icons.arrow_downward, moveDown),
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  children: [
                    actionButton("Forward", Icons.circle, moveForward),
                    const SizedBox(height: 10), // Adding padding
                    actionButton(
                        "Backward", Icons.circle_outlined, moveBackward),
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  children: [
                    actionButton("Left", Icons.arrow_back, moveLeft),
                    const SizedBox(height: 10), // Adding padding
                    actionButton("Right", Icons.arrow_forward, moveRight),
                  ],
                ),
              ],
            ),

            // Inserting array
            SizedBox(
              width: 500,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Add continuous input and Press Done",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 184, 247, 50)),
                    ),
                    TextField(
                      controller: _controller,
                      autocorrect: false,
                      style: const TextStyle(
                        // backgroundColor: Colors.black,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black87,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 4,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.white60,
                            width: 4,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.deepOrange,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        actionButton("Reset ", Icons.restore, resetCraft),
                        const SizedBox(
                          width: 20,
                        ),
                        actionButton("Done", Icons.done, moveAsync),
                      ],
                    ),
                  ],
                ),
              ),
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
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white70,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      textStyle: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    ),
    child: Column(
      children: [
        Icon(
          icon,
          color: Colors.black,
        ),
        Text(text),
      ],
    ),
  );
}
