import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../viewmodels/stroll_view_model.dart';
import '../widgets/author_info.dart';
import '../widgets/header_widget.dart';
import '../widgets/option_grid.dart';
import '../widgets/voice_instruction.dart';
import '../widgets/bottom_bar.dart';

class StrollScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => StrollViewModel()..loadPost(),
      child: Scaffold(
        body: Consumer<StrollViewModel>(
          builder: (context, viewModel, _) {
            if (viewModel.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (viewModel.error != null) {
              return Center(child: Text(viewModel.error!));
            }
            final post = viewModel.currentPost;
            if (post == null) return const SizedBox.shrink();

            return Stack(
              children: [
                _buildBackground(),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeaderWidget(post: post),
                        const Spacer(),
                        AuthorInfo(post: post),
                        const SizedBox(height: 16),
                        OptionGrid(post: post, viewModel: viewModel),
                        const SizedBox(height: 16),
                        const VoiceInstruction(),
                        const SizedBox(height: 16),
                        const BottomBar(),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildBackground() {
    return Positioned.fill(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(flex: 1, child: Container(color: Colors.black)),
        ],
      ),
    );
  }
}
