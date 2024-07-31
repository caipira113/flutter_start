import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image"),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double width = constraints.maxWidth * 0.5;
            double height = constraints.maxHeight * 0.5;

            return SizedBox(
              width: width,
              height: height,
              child: Image.network(
                  "https://for.stella.place/assets/Stella_R3_iOS_1024.png",
                  fit: BoxFit.contain),
            );
          },
        ),
      ),
    );
  }
}
