import 'package:flutter/material.dart';

import '../../models/stroll_post_model.dart';
import '../../viewmodels/stroll_view_model.dart';


class OptionGrid extends StatelessWidget {
  final StrollPost post;
  final StrollViewModel viewModel;

  const OptionGrid({Key? key, required this.post, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 2.5,
      children: post.options.map((option) {
        return InkWell(
          onTap: () => viewModel.selectOption(option.id),
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 12,   // Top and Bottom: 12px
              horizontal: 10, // Left and Right: 10px
            ),            decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: option.isSelected
                  ? const Color(0x008b88ef).withOpacity(1.0)
                  :  Colors.black.withOpacity(0.5),

            ),
          ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,   // Top and Bottom: 12px
                    horizontal: 15, // Left and Right: 10px
                  ),            decoration: BoxDecoration(
                  color: option.isSelected
                      ? const Color(0x008b88ef).withOpacity(1.0)
                      : Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: option.isSelected
                        ? const Color(0x008b88ef).withOpacity(1.0)
                        :  Colors.black.withOpacity(0.5),

                  ),
                ),
                  child: Text(
                    option.id,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    option.text,
                    style: const TextStyle(
                      color: Color(0xffc4c4c4),
                      fontSize: 16,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
