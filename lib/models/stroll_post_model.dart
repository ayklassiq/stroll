import 'package:stroll/models/stroll_option_model.dart';

class StrollPost {
  final String question;
  final String authorName;
  final int authorAge;
  final String authorQuote;
  final String timestamp;
  final int participantCount;
  final List<StrollOption> options;
  final String? backgroundImageUrl;

  StrollPost({
    required this.question,
    required this.authorName,
    required this.authorAge,
    required this.authorQuote,
    required this.timestamp,
    required this.participantCount,
    required this.options,
    this.backgroundImageUrl,
  });
}