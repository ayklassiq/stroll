class StrollOption {
  final String id;
  final String text;
  bool isSelected;

  StrollOption({
    required this.id,
    required this.text,
    this.isSelected = false,
  });
}