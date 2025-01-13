import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: SvgPicture.asset('assets/images/Card.svg', color: Colors.grey),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset('assets/images/bonfire.svg', color: Colors.grey),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset('assets/images/Chat.png', color: Colors.grey),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset('assets/images/User.svg', color: Colors.grey),
          onPressed: () {},
        ),
      ],
    );
  }
}
