import 'package:flutter/material.dart';

class VoiceInstruction extends StatelessWidget {
  const VoiceInstruction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pick your option.',
              style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
            ),
            Text(
              'See who has a similar mind.',
              style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: [
            Image(image: AssetImage('assets/images/voice.png'), height: 48, width: 48),
            Image(image: AssetImage('assets/images/arrow.png'), height: 48, width: 48),
          ],
        ),
      ],
    );
  }
}
