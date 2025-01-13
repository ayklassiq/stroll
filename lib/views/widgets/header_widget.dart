import 'package:flutter/material.dart';

import '../../models/stroll_post_model.dart';

class HeaderWidget extends StatelessWidget {
  final StrollPost post;

  const HeaderWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text(
            'Stroll Bonfire',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.timer_outlined, color: Colors.white, size: 30.0),
              Text('${post.timestamp} · ', style: const TextStyle(color: Colors.white)),
              const Icon(Icons.person_outline, color: Colors.white, size: 30.0),
              Text('${post.participantCount}', style: const TextStyle(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}
