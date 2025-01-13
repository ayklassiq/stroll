import 'package:flutter/foundation.dart';

import '../models/stroll_option_model.dart';
import '../models/stroll_post_model.dart';

class StrollViewModel extends ChangeNotifier {
  StrollPost? _currentPost;
  bool _isLoading = false;
  String? _error;

  StrollPost? get currentPost => _currentPost;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> loadPost() async {
    _isLoading = true;
    notifyListeners();

    try {
      _currentPost = StrollPost(
        question: "What is your favorite time of the day?",
        authorName: "Angelina",
        authorAge: 28,
        authorQuote: "Mine is definitely the peace in the morning.",
        timestamp: "22h 00m",
        participantCount: 103,
        options: [
          StrollOption(id: "A", text: "The peace in the early mornings"),
          StrollOption(id: "B", text: "The magical golden hours"),
          StrollOption(id: "C", text: "Wind-down time after dinners"),
          StrollOption(id: "D", text: "The serenity past midnight"),
        ],
        backgroundImageUrl: "assets/sunset_background.jpg",
      );
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void selectOption(String optionId) {
    if (_currentPost == null) return;

    for (var option in _currentPost!.options) {
      option.isSelected = option.id == optionId;
    }
    notifyListeners();
  }
}